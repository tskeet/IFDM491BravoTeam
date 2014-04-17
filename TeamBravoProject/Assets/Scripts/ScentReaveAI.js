#pragma strict

private var timer : int;
private var currentState : ScentReaveState;

enum ScentReaveState {Follow, Wander, Attack};
function Start () {

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