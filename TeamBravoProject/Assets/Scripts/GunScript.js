#pragma strict

/**
 * This script is for the gun.
 **/
private var currentTrigger : boolean;

function Start () {
	currentTrigger = false;
}

function Update () {

	var rightTrigger = Input.GetAxis("Fire1") < -0.5;
	
	if((!currentTrigger) && rightTrigger) {
		Debug.Log("left Trigger is down!  Fire!");
	}
	
	currentTrigger = rightTrigger;
}