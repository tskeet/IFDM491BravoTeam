#pragma strict

public var scentReave : GameObject;

function Start () {

	scentReave.SetActive(false);
}

function Update () {

}

function OnTriggerEnter(other : Collider) {
	if(other.CompareTag("Player")) {
		Debug.Log("entered the enemycontroller");
		scentReave.SetActive(true);
	}
}

function OnTriggerExit(other : Collider) {
	if(other.CompareTag("Player")) {
		Debug.Log("exited the enemycontroller");
		var script : ScentReaveAI = scentReave.GetComponent(ScentReaveAI);
		script.PrepareDeactivation();
		scentReave.SetActive(false);
	}
}