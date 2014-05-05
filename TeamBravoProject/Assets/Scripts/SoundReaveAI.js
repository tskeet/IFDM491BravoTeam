#pragma strict

public var target : Transform;
public var lastKnownPositionObject : GameObject;
private var lastKnownPosition : GameObject;
public var agent : NavMeshAgent;

private var timer : int;
public var currentState : SoundReaveState;

public var playerHealth : HealthScript;

//public var localObjects : GameObject[];

enum SoundReaveState{EchoLocate, EchoFound, Attack, Wander, Stun};

function Start () {
	timer = 70;
	//Debug.Log("DeltaTime is " + Time.deltaTime);
	//agent = GetComponent.<NavMeshAgent>();
	agent = GetComponent(NavMeshAgent);
	currentState = SoundReaveState.Wander;
}

function Update () {
	if(timer <= 0) {
		if(currentState == SoundReaveState.Attack) {
			this.AttackFunction();
		} else if(currentState == SoundReaveState.EchoLocate) {
			this.EchoLocationFunction();
		} else if(currentState == SoundReaveState.EchoFound) {
			this.EchoFoundFunction();
		} else {
			this.WanderFunction();
		}
		timer = 70;
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
		} else {
			currentState = SoundReaveState.Wander;
		}
	}
}

function EchoFoundFunction() {
	agent.speed = 1000.0;
	//agent.SetDestination(lastKnownPosition.transform.position);
	var position : Vector3 = lastKnownPosition.transform.position;
	agent.SetDestination(Vector3(position.x, position.y - 19.22287, position.z));
}

function AttackFunction() {

}

function WanderFunction() {
	Debug.Log("in Wander Function");
	//agent.Move(new Vector3(Random.value, Random.value, Random.value));
	var randomVector = Random.insideUnitCircle * 100;
	
	//Debug.Log("randomVector = " + randomVector);
	//randomVector.y = 0.0;
	agent.speed = 50.0;
	agent.SetDestination((new Vector3(randomVector.x, -19.22287, randomVector.y)) + agent.transform.position);
	
	this.currentState = SoundReaveState.EchoLocate;
}

function OnTriggerEnter(other : Collider) {
	if(other.gameObject.tag == "LastKnownPosition") {
		//Debug.Log("collied with last known position");
		GameObject.Destroy(lastKnownPosition);
		agent.Stop(true);
		currentState = SoundReaveState.EchoLocate;
	} else if(other.gameObject.tag == "Player") {
		Debug.Log("damaging the player.");
		playerHealth.DamagePlayer(10.0);
	}
}
