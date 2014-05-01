#pragma strict

var savedMaxForwardSpeed : float;
var savedAcceleration : float;

function Start () {

}

function Update () {

}

function OnTriggerEnter(other : Collider) {
	if(other.CompareTag("Player")) {
		Debug.Log("entered ramp");
		var characterMotor : CharacterMotor = other.gameObject.GetComponent("CharacterMotor");
		savedMaxForwardSpeed = characterMotor.movement.maxForwardSpeed;
		savedAcceleration = characterMotor.movement.maxGroundAcceleration;
		characterMotor.movement.maxForwardSpeed = 1000.0;
		characterMotor.movement.maxGroundAcceleration = 1000.0;
	}
}

function OnTriggerExit(other : Collider) {
	if(other.CompareTag("Player")) {
		Debug.Log("exited ramp");
		var characterMotor : CharacterMotor = other.gameObject.GetComponent("CharacterMotor");
		characterMotor.movement.maxForwardSpeed = savedMaxForwardSpeed;
		characterMotor.movement.maxGroundAcceleration = savedAcceleration;
	}
}