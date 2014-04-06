#pragma strict

/**
 * This script is for the gun.
 **/
private var currentTrigger : boolean;
//public var projectile : Rigidbody;

public var currentUniverse : int;

public var lookcamera : Camera;

public var weapon : GameObject;

public var reticleTexture : Texture2D;
public var position : Rect;
static var OriginalOn  = true;

function Start () {
	currentTrigger = false;
}

function Update () {

	position = Rect((Screen.width - reticleTexture.width) / 2, (Screen.height - reticleTexture.height) / 2, reticleTexture.width, reticleTexture.height);

	var rightTrigger = Input.GetAxis("Fire1") < -0.5;
	
	if((!currentTrigger) && rightTrigger) {
		//Debug.Log("left Trigger is down!  Fire!");
		
		/**var clone : Rigidbody;
		clone = Instantiate(projectile, transform.position, transform.rotation);
		clone.velocity = transform.TransformDirection(Vector3.forward * 50); */
		var hit : RaycastHit;
		var ray : Ray = lookcamera.ScreenPointToRay(Vector3 ((lookcamera.pixelWidth / 2), (lookcamera.pixelHeight / 2), 0));
		
		if(Physics.Raycast(ray, hit)) {
			//Debug.Log("Hit!  I hit something! " + hit.collider.gameObject.tag);
			//Debug.DrawRay(lookcamera.transform.position, ray.direction, Color.blue, 1.0);
			if(hit.collider.gameObject.tag == "Enemy") {
				Destroy(hit.collider.gameObject);
			}
		}
		
		
	}
	
	currentTrigger = rightTrigger;
}

function ActivateWeapon() {
	weapon.SetActive(true);
}

function DeactivateWeapon() {
	weapon.SetActive(false);
}

function OnGUI() {
	if(OriginalOn) {
		GUI.DrawTexture(position, reticleTexture);
	}
}