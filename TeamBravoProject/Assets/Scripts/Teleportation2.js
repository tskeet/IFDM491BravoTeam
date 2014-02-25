#pragma strict
var currentUniverse : int;
var player : Transform;
var universe1Origin : Vector3;
var universe2Origin : Vector3;
var universe3Origin : Vector3;
var universe4Origin : Vector3;


function Start () {

}

function Update () {

	if(Input.anyKeyDown) {
		Debug.Log(Input.inputString);
	
	}
	//if(Input.GetAxis("axis for directional pads) is positive or negative.
	if(Input.GetKeyDown(KeyCode.UpArrow)) {
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
	}
}