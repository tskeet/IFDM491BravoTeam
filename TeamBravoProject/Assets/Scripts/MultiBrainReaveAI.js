#pragma strict

public var player : HealthScript;

private var agent : NavMeshAgent;
private var notifyPosition : Vector3;
private var currentState : MBReaveState;
private var timer : int;

enum MBReaveState{Wander, Alarm, Attack};
function Start () {
	timer = 70;
	agent = GetComponent.<NavMeshAgent>();
	currentState = MBReaveState.Wander;
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
	
		}
		timer = 70;
	} else {
		timer--;
	}
}

function WanderFunction() {
	//Debug.Log("in Wander Function");
	//agent.Move(new Vector3(Random.value, Random.value, Random.value));
	var randomVector = Random.insideUnitCircle * 5;
	//Debug.Log("randomVector = " + randomVector);
	//randomVector.y = 0.0;
	agent.speed = 5.0;
	agent.SetDestination((new Vector3(randomVector.x, 0.0, randomVector.y)) + agent.transform.position);
}

function AlarmFunction() {
	agent.speed = 25.0;
	agent.SetDestination(notifyPosition);

}

function AttackFunction() {
	
}

function Notify(position : Vector3) {
	Debug.Log("collided with player, and in Notify");
	notifyPosition = position;
	currentState = MBReaveState.Alarm;
}