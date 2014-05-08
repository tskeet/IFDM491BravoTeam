#pragma strict
var currentUniverseLocation : Vector3;  //The location of the universe that the player is currently in.
var player : Transform;			// a reference to the player object

// These are locations of the different universes in the world space of Unity.
var universeEastOrigin : Vector3;
var universeWestOrigin : Vector3;
var universeSouthOrigin : Vector3;
var universeNorthOrigin : Vector3;

//this variable is when the D-pad is pressed, it is set by the Start() function.
var isDPadPressed;

//These variables are used for the weapon.
public var weapon : WeaponScript;

//var weapon : GameObject;
public var currentUniverse : int; //an int to signify the current universe the player is in.
//var weaponUniverse : int; //an int to signify which universe the weapon is in.

public var mouseUniverse : int;

function Start () {
	isDPadPressed = 0;
}

function Update () {

	CheckWeapon();	
	var horizontal_d = Input.GetAxis("Horizontal_D");
	var vertical_d = Input.GetAxis("Vertical_D");
	
	if(Input.GetMouseButtonDown(1)) {
		if(mouseUniverse == 3) {
			mouseUniverse = 0;
		} else {
			mouseUniverse++;
		}
		if(mouseUniverse == 0) {
			currentUniverse = 1;
			ChangeUniverse(universeEastOrigin);
		} else if(mouseUniverse == 1) {
			currentUniverse = 2;
			ChangeUniverse(universeWestOrigin);
		} else if(mouseUniverse == 2) {
			currentUniverse = 3;
			ChangeUniverse(universeSouthOrigin);
		} else {
			currentUniverse = 4;
			ChangeUniverse(universeNorthOrigin);
		}
	}
	
	if((isDPadPressed == 0) && ((horizontal_d != 0) || (vertical_d != 0))) {
		//Debug.Log("directional pad was pressed.");
		isDPadPressed = 1;
		if((horizontal_d > 0) && (vertical_d == 0)) { //east
			currentUniverse = 1;
			//isDPadPressed = 1;
			//Debug.Log("East");
			//Debug.Log(Input.GetAxis("Horizontal_D"));
			ChangeUniverse(universeEastOrigin);
		} else if((horizontal_d < 0) && (vertical_d == 0)) { //west
			currentUniverse = 3;
			//isDPadPressed = 1;
			//Debug.Log("West");
			ChangeUniverse(universeWestOrigin);
		} else if((horizontal_d == 0) && (vertical_d > 0)){ // north
			currentUniverse = 4;
			//isDPadPressed = 1;
			//Debug.Log("North");
			ChangeUniverse(universeNorthOrigin);
		} else if((horizontal_d == 0) && (vertical_d < 0)){ // south
			currentUniverse = 2;
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
function ChangeUniverse(nextUniverseLocation : Vector3) {
	if(currentUniverseLocation != nextUniverseLocation) {
		var relativePosition = RelativeOrigin(currentUniverseLocation);
		if(nextUniverseLocation == universeEastOrigin) {
			player.position = NewPlayerPosition(universeEastOrigin, relativePosition);
		} else if(nextUniverseLocation == universeWestOrigin) {
			player.position = NewPlayerPosition(universeWestOrigin, relativePosition);
		} else if(nextUniverseLocation == universeSouthOrigin) {
			player.position = NewPlayerPosition(universeSouthOrigin, relativePosition);
		} else {
			player.position = NewPlayerPosition(universeNorthOrigin, relativePosition);
		}
	}
	
	currentUniverseLocation = nextUniverseLocation;
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

/**
 * Function CheckWeapon checks whether if weapon is current universe or not.  If not, the weapon will be deactivated.
 **/
 function CheckWeapon() {
 	if(this.currentUniverse == weapon.currentUniverse) {
 		weapon.ActivateWeapon();
 	} else {
 		weapon.DeactivateWeapon();
 	}
 }