#pragma strict

/**
 * This script is for the gun.
 **/
private var currentTrigger : boolean;
public var projectile : Rigidbody;

function Start () {
	currentTrigger = false;
}

function Update () {

	var rightTrigger = Input.GetAxis("Fire1") < -0.5;
	
	if((!currentTrigger) && rightTrigger) {
		//Debug.Log("left Trigger is down!  Fire!");
		
		var clone : Rigidbody;
		clone = Instantiate(projectile, transform.position, transform.rotation);
		clone.velocity = transform.TransformDirection(Vector3.forward * 50);
	}
	
	currentTrigger = rightTrigger;
}