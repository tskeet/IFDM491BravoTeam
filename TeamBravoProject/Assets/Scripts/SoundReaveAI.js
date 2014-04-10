#pragma strict

public var target : Transform;
public var lastKnownPositionObject : GameObject;
private var lastKnownPosition : GameObject;
public var agent : NavMeshAgent;

private var timer : int;
public var currentState : SoundReaveState;

public var localObjects : GameObject[];

enum SoundReaveState{EchoLocate, EchoFound, Attack, Wander};

function Start () {
	timer = 70;
	//Debug.Log("DeltaTime is " + Time.deltaTime);
	agent = GetComponent.<NavMeshAgent>();
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
	Debug.Log("inside EchoLocation Fuction");
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
	agent.SetDestination(lastKnownPosition.transform.position);
}

function AttackFunction() {

}

function WanderFunction() {
	Debug.Log("in Wander Function");
	//agent.Move(new Vector3(Random.value, Random.value, Random.value));
	var randomVector = Random.onUnitSphere;
	randomVector.y = 0.0;
	agent.SetDestination(agent.gameObject.transform.position + randomVector);
	currentState = SoundReaveState.EchoLocate;
}

function OnTriggerEnter(other : Collider) {
	if(other.gameObject.tag == "LastKnownPosition") {
		//Debug.Log("collied with last known position");
		GameObject.Destroy(lastKnownPosition);
		currentState = SoundReaveState.EchoLocate;
	}
}

function OnCollisionEnter(other : Collision) {
	if(other.gameObject.tag == "LastKnownPosition") {
		Debug.Log("collided with Last Known Position.");
		GameObject.Destroy(lastKnownPosition);
		currentState = SoundReaveState.EchoLocate;
	}
}