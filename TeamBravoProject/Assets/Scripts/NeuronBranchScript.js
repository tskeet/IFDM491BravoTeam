#pragma strict

public var multiBrainReave : MultiBrainReaveAI;
public var neuron : Transform;

function Start () {

}

function Update () {

}

function OnTriggerEnter(other : Collider) {
	if(other.CompareTag("Player")) {
		multiBrainReave.Notify();
	}
}