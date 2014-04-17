#pragma strict

public var health : float = 100.0;
public var position : Vector2;

function Start () {

}

function Update () {
	if (health <= 0.0) {
		//Player is dead
		Debug.Log("player is dead");	
	} else {
		
	}
}

function DamagePlayer(damage : float) {
	health = health - damage;
}