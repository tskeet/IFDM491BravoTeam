#pragma strict

private var notifyPosition : Vector3;
private var currentState : MBReaveState;

enum MBReaveState{Wander, Alarm, Attack};
function Start () {
	currentState = MBReaveState.Wander;
}

function Update () {
	if(currentState == MBReaveState.Wander) {
		this.Wander();
	} else if(currentState == MBReaveState.Alarm) {
		this.Alarm();
	} else if(currentState == MBReaveState.Attack) {
		this.Attack();
	} else {
	
	}
}

function Wander() {

}

function Alarm() {

}

function Attack() {

}

function Notify(position : Vector3) {
	notifyPosition = position;
	currentState = MBReaveState.Alarm;
}