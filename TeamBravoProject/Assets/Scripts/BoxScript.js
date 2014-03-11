#pragma strict

private var anotification : GameObject;
public var boxController : BoxController;
function Start () {
}

function Update () {

/**	if(Input.GetButtonUp("X_Button")) {
		//Debug.Log("x button pushed");
		Debug.Log("inBox = " + inBox);
		if(nearBox) {
			if(inBox) {
				OutOfBox();
			} else{ 
				InToBox();
			}
		}
	}**/
}

function OnTriggerEnter(other : Collider) {
	//Debug.Log("collided with box");
	if(other.CompareTag("Player")) {
		anotification = new GameObject();
		anotification.AddComponent(GUIText);
		if(boxController.inBox) {
			anotification.guiText.text = "Press X to take weapon out of box";
		} else {
			anotification.guiText.text = "Press X to put weapon into box";
		}
		boxController.nearBox = true;
		boxController.currentBox = this;
		//Debug.Log("Press A to put weapon into box.");
	}
}

function OnTriggerExit(other : Collider) {
	if(other.CompareTag("Player")) {
		Destroy(anotification);
		boxController.nearBox = false;
	}
}
