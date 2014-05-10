#pragma strict

public var target : Transform;
public var lastKnownPositionObject : GameObject;
private var lastKnownPosition : GameObject;
public var agent : NavMeshAgent;

private var timer : int;
public var currentState : SoundReaveState;

public var playerHealth : HealthScript;

public var stunTimer : int;
//public var localObjects : GameObject[];

enum SoundReaveState{EchoLocate, EchoFound, Attack, Wander, Stun};

function Start () {
	timer = 70;
	//Debug.Log("DeltaTime is " + Time.deltaTime);
	//agent = GetComponent.<NavMeshAgent>();
	agent = GetComponent(NavMeshAgent);
	currentState = SoundReaveState.Wander;
	animation["Take 001"].speed = 2.0;
	stunTimer = -1;
}

function Update () {
	if(timer <= 0) {
		if(currentState == SoundReaveState.Attack) {
			this.AttackFunction();
		} else if(currentState == SoundReaveState.EchoLocate) {
			this.EchoLocationFunction();
		} else if(currentState == SoundReaveState.EchoFound) {
			this.EchoFoundFunction();
		} else if(currentState == SoundReaveState.Stun) {
			this.StunFunction();
		} else {
			this.WanderFunction();
		}
	} else {
		timer--;
	}
	//Debug.Log("DeltaTime is " + Time.deltaTime);
}

function EchoLocationFunction() {
	//Debug.Log("inside EchoLocation Fuction");
	//getting vector between the Sound Reave and the Player's position.
	var heading = target.position - transform.position;
	
	var distance = heading.magnitude;
	var direction = heading / distance;
	
	var ray : Ray = new Ray(transform.position, direction);
	var hit : RaycastHit;
	
	if(Physics.Raycast(ray, hit)) {
		var hitObject : GameObject = hit.collider.gameObject;
		if(hitObject.tag == "Player") {
			if(lastKnownPosition != null) {
				GameObject.Destroy(lastKnownPosition);
			}
			
			lastKnownPosition = GameObject.Instantiate(lastKnownPositionObject, hitObject.transform.position, hitObject.transform.rotation);
			currentState = SoundReaveState.EchoFound;
			transform.LookAt(target.position);
			timer = 0;
		} else {
			currentState = SoundReaveState.Wander;
			timer = 0;
		}
	}
}

function EchoFoundFunction() {
	agent.acceleration = 1000.0;
	agent.speed = 1000.0;
	agent.angularSpeed = 100.0;
	//agent.SetDestination(lastKnownPosition.transform.position);
	//var position : Vector3 = lastKnownPosition.transform.position;
	var raycast : RaycastHit;
	Physics.Raycast(lastKnownPosition.transform.position, -Vector3.up, raycast);
	agent.SetDestination(raycast.point);
}

function AttackFunction() {

}

function StunFunction() {

	if(stunTimer < 0) {
		agent.Stop(true);
		var ani : Animation = gameObject.animation;
		ani["Take 001"].speed = 0.0;
		currentState = SoundReaveState.Stun;
		stunTimer = 350;
		timer = 0;
	} else if(stunTimer > 0) {
		stunTimer--;
	} else {
		gameObject.animation["Take 001"].speed = 2.0;
		currentState = SoundReaveState.Wander;
		stunTimer = -1;
		timer = 0;
	}
}

function WanderFunction() {
	//Debug.Log("in Wander Function");
	//agent.Move(new Vector3(Random.value, Random.value, Random.value));
	var randomVector = Random.insideUnitCircle * 100;
	
	//Debug.Log("randomVector = " + randomVector);
	//randomVector.y = 0.0;
	agent.speed = 50.0;
	
	var raycast : RaycastHit;
	Physics.Raycast(Vector3(randomVector.x + transform.position.x, transform.position.y, randomVector.y + transform.position.z), -Vector3.up, raycast);
	agent.SetDestination(raycast.point);

	this.currentState = SoundReaveState.EchoLocate;
	this.timer = 70;
}

function OnTriggerEnter(other : Collider) {
	if(other.gameObject.tag == "LastKnownPosition") {
		//Debug.Log("collied with last known position");
		GameObject.Destroy(lastKnownPosition);
		agent.Stop(true);
		currentState = SoundReaveState.EchoLocate;
	} else if(other.gameObject.tag == "Player") {
		//Debug.Log("damaging the player.");
		playerHealth.DamagePlayer(10.0);
	}
}
