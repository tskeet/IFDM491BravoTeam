#pragma strict

public var target : Transform;

private var timer : int;
private var currentState : ScentReaveState;;
private var previousPlayerLocation : Vector3;


public var scentNodeCopy : GameObject;
public var scentTrail : Array;
public var maxScentTrailLength : int;

enum ScentReaveState {Follow, Wander, Attack};
function Start () {
	scentTrail = new Array();
	previousPlayerLocation = target.position;
}

function Update () {
	this.AddToScentTrail();
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
		var midpoint = Vector3.Lerp(previousPlayerLocation, target.position, 0.5);
		//var angle = 
		var newScentNode = GameObject.Instantiate(scentNodeCopy, midpoint, transform.rotation);
		if(scentTrail.length >= maxScentTrailLength) {
			//var scentNodeToBeRemoved = scentTrail.Pop
		}
		scentTrail.Add(newScentNode);
		previousPlayerLocation = target.position;
	}
}