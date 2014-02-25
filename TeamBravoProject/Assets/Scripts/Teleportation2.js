#pragma strict
var currentUniverse : int;
var player : Transform;
var universe1Origin : Vector3;
var universe2Origin : Vector3;
var universe3Origin : Vector3;
var universe4Origin : Vector3;
var isDPadPressed = 0;


function Start () {

}

function Update () {

	//if(Input.GetAxis("axis for directional pads) is positive or negative.
	/*if(Input.GetKeyDown(KeyCode.UpArrow)) {
		Debug.Log("Up arrow down.");
	}
	if(Input.GetKeyDown(KeyCode.LeftArrow)) {
		Debug.Log("Left arrow down.");
	}
	if(Input.GetKeyDown(KeyCode.DownArrow)) {
		Debug.Log("Down arrow down.");
	}
	if(Input.GetKeyDown(KeyCode.RightArrow)) {
		Debug.Log("Right arrow down.");
	}*/
	
	//if(dPadPressed == 0) {
	
	var horizontal_d = Input.GetAxis("Horizontal_D");
	var vertical_d = Input.GetAxis("Vertical_D");
	if((isDPadPressed == 0) && ((horizontal_d != 0) || (vertical_d != 0))) {
		if((horizontal_d > 0) && (vertical_d == 0)) { //east
			isDPadPressed = 1;
			Debug.Log("East");
			//Debug.Log(Input.GetAxis("Horizontal_D"));
		} else if((horizontal_d < 0) && (vertical_d == 0)) { //west
			isDPadPressed = 1;
			Debug.Log("West");
		} else if((horizontal_d == 0) && (vertical_d > 0)){ // north
			isDPadPressed = 1;
			Debug.Log("North");
		} else if((horizontal_d == 0) && (vertical_d < 0)){ // south
			isDPadPressed = 1;
			Debug.Log("South");
		} else {
			Debug.Log("don't know what");
		}
	}
	if((isDPadPressed == 1) && (horizontal_d == 0) && (vertical_d == 0)) {
		isDPadPressed = 0;
	}
}