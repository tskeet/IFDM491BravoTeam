#pragma strict

public var nearBox : boolean;
public var inBox : boolean;
public var player : Teleportation2;
public var weapon : WeaponScript;
public var currentBox : BoxScript;

function Start () {
	nearBox = false;
	inBox = false;
}

function Update () {

	if(Input.GetButtonDown("X_Button") && nearBox) {
		//Debug.Log("x button was pressed");
		if(inBox) {
			// take weapon out of box and change weapon's current Universe
			weapon.currentUniverse = player.currentUniverse;
			inBox = false;
		} else {
			// put weapon into box and change weapon's current universe to zero
			//You can only put a weapon into the box when the player and gun exist in the same universe
			if(weapon.currentUniverse == player.currentUniverse) {
				weapon.currentUniverse = 0;
				inBox = true;
			}
		}
	}
}