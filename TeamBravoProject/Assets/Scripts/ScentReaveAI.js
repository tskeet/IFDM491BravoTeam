#pragma strict

public var target : Transform;

private var timer : int;
private var currentState : ScentReaveState;
private var previousPlayerLocation : Vector3;

//private var scentTrail : ScentNode[];

enum ScentReaveState {Follow, Wander, Attack};
function Start () {
	//scentTrail = new Array();
}

function Update () {
	if(timer <= 0) {
		if(currentState == ScentReaveState.Attack) {
			this.AttackFunction();
		} else if(currentState == ScentReaveState.Follow) {
			this.FollowFunction();
		} else {
			this.WanderFunction();
		}
		timer = 70;
	} else {
		timer--;
	}
}

function AttackFunction() {

}

function FollowFunction() {

}

function WanderFunction() {

}

function AddToScentTrail() {
	if(Vector3.Distance(previousPlayerLocation, target.position) > 1.0) {
		var newScentNode = 0;	
	}
}