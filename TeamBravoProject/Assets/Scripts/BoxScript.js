#pragma strict

//private var anotification : GameObject;
private var anotification : GUIText;
public var boxController : BoxController;
public var takeOutNotification : GUIText;
public var putInNotification : GUIText;
function Start () {

	anotification = new GUIText();

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
		//anotification = new GameObject();
		//anotification.AddComponent(GUIText);
		if(boxController.inBox) {
			anotification = Instantiate(takeOutNotification, Vector3(0.5, 0.5, 0.5), Quaternion.identity);
		} else {
			anotification = Instantiate(putInNotification, Vector3(0.5, 0.5, 0.5), Quaternion.identity);
		}
		//anotification.guiText.pixelOffset = Vector2(500, 500);
		anotification.enabled = true;
		boxController.nearBox = true;
		boxController.currentBox = this;
		//Debug.Log("Press A to put weapon into box.");
	}
}

function OnTriggerExit(other : Collider) {
	if(other.CompareTag("Player")) {
		Destroy(anotification.gameObject);
		//anotification.enabled = false;
		boxController.nearBox = false;
	}
}
