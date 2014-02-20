#pragma strict

var player : Transform;
var enemy : Transform;
var speed : float;
var maxSpeed : float;

function Start () {

}

function Update () {

	var newVector : Vector3;
	newVector = enemy.position - player.position;
	newVector.Normalize();
	newVector = newVector * speed;
	enemy.position = newVector;
}