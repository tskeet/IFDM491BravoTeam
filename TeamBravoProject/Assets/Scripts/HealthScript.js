#pragma strict

public var healthMax : float = 100.0;
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
		//Debug.Log("player is dead");
		Application.LoadLevel(0);
	} else {
		
	}
}

function DamagePlayer(damage : float) {
	health = health - damage;
}

function OnGUI() {
	//GUI.DrawTexture
	//GUI.Label(Rect(0,0,100, 50), "Health : " + health);
	GUI.DrawTexture(Rect(500,10, (400 * (health / healthMax)), 40), healthgreen, ScaleMode.StretchToFill, true, 0.0);
	GUI.DrawTexture(Rect(500,10, 400, 40), healthbar, ScaleMode.StretchToFill, true, 0.0);
}