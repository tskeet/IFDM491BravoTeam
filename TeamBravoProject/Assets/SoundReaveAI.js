#pragma strict

public var target : Transform;

private var timer : int;
private var currentState : SoundReaveState;

enum SoundReaveState{EchoLocate, EchoFound, Attack, Wander};

function Start () {
	timer = 30;
	//Debug.Log("DeltaTime is " + Time.deltaTime);
	currentState = SoundReaveState.Wander;
}

function Update () {
	
	if(currentState == SoundReaveState.Attack) {
		this.AttackFunction();
	} else if(currentState == SoundReaveState.EchoLocate) {
		this.EchoLocationFunction();
	} else if(currentState == SoundReaveState.EchoFound) {
		this.EchoFoundFunction();
	} else {
		this.WanderFunction();
	}
	//Debug.Log("DeltaTime is " + Time.deltaTime);
}

function EchoLocationFunction() {

}

function EchoFoundFunction() {

}

function AttackFunction() {

}

function WanderFunction() {

}