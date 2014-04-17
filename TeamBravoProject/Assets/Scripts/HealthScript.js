#pragma strict

public var health : float = 100.0;
public var position : Rect;
public var healthbar : Texture2D;
public var healthgreen : Texture2D;

function Start () {

}

function Update () {
	//position = Rect((Screen.width - 
	if (health <= 0.0) {
		//Player is dead
		Debug.Log("player is dead");	
	} else {
		
	}
}

function DamagePlayer(damage : float) {
	health = health - damage;
}

function OnGUI() {
	//GUI.DrawTexture
}