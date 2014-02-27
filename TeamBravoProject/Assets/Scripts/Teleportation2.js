﻿#pragma strict
var currentUniverse : Vector3;
var player : Transform;
var universeEastOrigin : Vector3;
var universeWestOrigin : Vector3;
var universeSouthOrigin : Vector3;
var universeNorthOrigin : Vector3;
var isDPadPressed;


function Start () {
	isDPadPressed = 0;
}

function Update () {	
	var horizontal_d = Input.GetAxis("Horizontal_D");
	var vertical_d = Input.GetAxis("Vertical_D");
	if((isDPadPressed == 0) && ((horizontal_d != 0) || (vertical_d != 0))) {
		isDPadPressed = 1;
		if((horizontal_d > 0) && (vertical_d == 0)) { //east
			//isDPadPressed = 1;
			//Debug.Log("East");
			//Debug.Log(Input.GetAxis("Horizontal_D"));
			ChangeUniverse(universeEastOrigin);
		} else if((horizontal_d < 0) && (vertical_d == 0)) { //west
			//isDPadPressed = 1;
			//Debug.Log("West");
			ChangeUniverse(universeWestOrigin);
		} else if((horizontal_d == 0) && (vertical_d > 0)){ // north
			//isDPadPressed = 1;
			//Debug.Log("North");
			ChangeUniverse(universeNorthOrigin);
		} else if((horizontal_d == 0) && (vertical_d < 0)){ // south
			//isDPadPressed = 1;
			//Debug.Log("South");
			ChangeUniverse(universeSouthOrigin);
		} else {
			//Debug.Log("don't know what");
		}
	}
	if((isDPadPressed == 1) && (horizontal_d == 0) && (vertical_d == 0)) {
		isDPadPressed = 0;
	}
}

/**
 * Function ChangeUniverse changes the player's position from the current universe to the next universe that is passed
 * as a parameter.
 */
function ChangeUniverse(nextUniverse : Vector3) {
	if(currentUniverse != nextUniverse) {
		var relativePosition = RelativeOrigin(currentUniverse);
		if(nextUniverse == universeEastOrigin) {
			player.position = NewPlayerPosition(universeEastOrigin, relativePosition);
		} else if(nextUniverse == universeWestOrigin) {
			player.position = NewPlayerPosition(universeWestOrigin, relativePosition);
		} else if(nextUniverse == universeSouthOrigin) {
			player.position = NewPlayerPosition(universeSouthOrigin, relativePosition);
		} else {
			player.position = NewPlayerPosition(universeNorthOrigin, relativePosition);
		}
	}
	
	currentUniverse = nextUniverse;
}

/**
 * Function RelativeOrigin returns a Vector3 that describes the player's relationship to the universe vector3
 * that is passed in. This is done by subtracting player's position from the universe's position that is passed
 * in.
 */
function RelativeOrigin(universePosition : Vector3) {
	return Vector3(player.position.x - universePosition.x, player.position.y - universePosition.y, player.position.z - universePosition.z);
}

/**
 * Function NewPlayerPosition returns a Vector3 that places the player in the absolute location with respect to
 * Unity's world coordinate system. This is done by adding relativePosition to the newUniverse position.
 */
function NewPlayerPosition(universePosition : Vector3, relativePosition : Vector3) {
	return Vector3(relativePosition.x + universePosition.x, relativePosition.y + universePosition.y, relativePosition.z + universePosition.z);
}