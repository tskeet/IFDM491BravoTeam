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

public var gunAnimation : Animation;

public var reloadTimer : int;
public var reloadLight : Light;

function Start () {
	currentTrigger = false;
	gunAnimation = GetComponent(Animation);
	reloadTimer = 0;
}

function Update () {

	position = Rect((Screen.width - reticleTexture.width) / 2, (Screen.height - reticleTexture.height) / 2, reticleTexture.width, reticleTexture.height);

	var rightTrigger = Input.GetAxis("Fire1") < -0.5;
	
	if((!currentTrigger) && rightTrigger && (reloadTimer <= 0)) {
	//if(true) {
		//Debug.Log("left Trigger is down!  Fire!");
		
		/**var clone : Rigidbody;
		clone = Instantiate(projectile, transform.position, transform.rotation);
		clone.velocity = transform.TransformDirection(Vector3.forward * 50); */
		var hit : RaycastHit;
		var ray : Ray = lookcamera.ScreenPointToRay(Vector3((lookcamera.pixelWidth / 2), (lookcamera.pixelHeight / 2), 0));
		//Debug.DrawRay(ray.origin, ray.direction*1000, Color.white, 5.0);
		
		if(Physics.Raycast(ray, hit)) {
			//Debug.Log("Hit!  I hit something! " + hit.collider.gameObject.name);
			//Debug.DrawRay(lookcamera.transform.position, ray.direction, Color.blue, 1.0);
			if(hit.collider.CompareTag("SoundReave")) {
				//Debug.Log("hit enemy");
				//Destroy(hit.collider.gameObject);
				var soundScript : SoundReaveAI = hit.collider.GetComponent(SoundReaveAI);
				soundScript.StunFunction();
			} else if(hit.collider.CompareTag("ScentReave")) {
				var scentScript : ScentReaveAI = hit.collider.GetComponent(ScentReaveAI);
				scentScript.StunFunction();
			} else if(hit.collider.CompareTag("MBReave")) {
				var mbScript : MultiBrainReaveAI = hit.collider.GetComponent(MultiBrainReaveAI);
				mbScript.StunFunction();
			}
		}
		//gunAnimation.Play("Regular Spin");
		reloadTimer = 560;
	}
	
	currentTrigger = rightTrigger;
	
	if(reloadTimer > 0) {
		var intensity : float = reloadTimer / 560.0;
		//Debug.Log("intensity is " + intensity);
		//gunAnimation["Slower Spin"].speed = (intensity * 2.0) + 1.0;
		gunAnimation["Slower Spin"].speed = intensity * 10.0;
		reloadLight.intensity = intensity * 8.0;
		reloadTimer--;
	} else {
		gunAnimation["Slower Spin"].speed = 1.0;
	}
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