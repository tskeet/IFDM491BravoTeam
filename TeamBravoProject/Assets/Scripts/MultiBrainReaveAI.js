#pragma strict

public var player : HealthScript;

private var agent : NavMeshAgent;
private var notifyPosition : Vector3;
private var currentState : MBReaveState;
private var timer : int;

private var stunTimer : int;

enum MBReaveState{Wander, Alarm, Attack, Stun};
function Start () {
	timer = 70;
	agent = GetComponent.<NavMeshAgent>();
	agent.acceleration = 100.0;
	currentState = MBReaveState.Wander;
	var ani : Animation = GetComponent(Animation);
	ani["Take 001"].speed = 2.0;
	stunTimer = -1;
}

function Update () {
	if(timer <= 0) {
		if(currentState == MBReaveState.Wander) {
			this.WanderFunction();
		} else if(currentState == MBReaveState.Alarm) {
			this.AlarmFunction();
		} else if(currentState == MBReaveState.Attack) {
			this.AttackFunction();
		} else {
			this.StunFunction();
		}
	} else {
		timer--;
	}
}

function StunFunction() {
	if(stunTimer < 0) {
		agent.Stop(true);
		var ani : Animation = gameObject.animation;
		ani["Take 001"].speed = 0.0;
		currentState = MBReaveState.Stun;
		stunTimer = 350;
		timer = 0;
	} else if(stunTimer > 0) {
		stunTimer--;
	} else {
		gameObject.animation["Take 001"].speed = 2.0;
		currentState = MBReaveState.Wander;
		stunTimer = -1;
		timer = 0;
	}
}

function WanderFunction() {
	//Debug.Log("in Wander Function");
	//agent.Move(new Vector3(Random.value, Random.value, Random.value));
	var randomVector = Random.insideUnitCircle * 30;
	//Debug.Log("randomVector = " + randomVector);
	//randomVector.y = 0.0;
	agent.speed = 50.0;
	var raycast : RaycastHit;
	Physics.Raycast(Vector3(randomVector.x + transform.position.x, transform.position.y, randomVector.y + transform.position.z), -Vector3.up, raycast);
	agent.SetDestination(raycast.point);
	timer = 70;
}

function AlarmFunction() {
	agent.speed = 100.0;
	transform.LookAt(player.gameObject.transform);
	var raycast : RaycastHit;
	Physics.Raycast(player.gameObject.transform.position, -Vector3.up, raycast);
	agent.SetDestination(raycast.point);
	currentState = MBReaveState.Attack;
}

function AttackFunction() {
	var script : Teleportation2 = player.gameObject.GetComponent(Teleportation2);
	if(script.currentUniverse != 2) {
		currentState = MBReaveState.Wander;
	} else {
		var raycast : RaycastHit;
		Physics.Raycast(player.gameObject.transform.position, -Vector3.up, raycast);
		agent.SetDestination(raycast.point);
	}
}

function Notify() {
	//Debug.Log("collided with player, and in Notify");
	//notifyPosition = position;
	currentState = MBReaveState.Alarm;
}

function OnTriggerEnter(other : Collider) {
	if(other.CompareTag("Player")) {
		var health : HealthScript = other.GetComponent(HealthScript);
		health.DamagePlayer(10.0);
	}
}