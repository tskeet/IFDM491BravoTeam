#pragma strict

var target : Transform;
var moveSpeed : float = 10f;
var rotationSpeed : float = 3f;

//var myTransform : Transform;

var agent : NavMeshAgent;

private var chasePlayer : boolean;

function Awake() {

	chasePlayer = false;
}

function Start() {
	target = GameObject.FindWithTag("Player").transform;
	agent = GetComponent.<NavMeshAgent>();
}

function Update() {

	if(chasePlayer == true) {
	
		agent.SetDestination(GameObject.FindWithTag("Player").transform.position);
	}
}

function OnTriggerEnter (other : Collider) {

	if(other.CompareTag("Player")) {
		//Debug.Log("entered my territory");
		chasePlayer = true;
	}
}

function OnTiggerExit (other : Collider) {
	if(other.CompareTag("Player")) {
		//Debug.Log("exited my territory");
		chasePlayer = false;
	}
}

function OnCollisionEnter (other : Collision) {
	if(other.gameObject.name == "Black Hole Projectile(Clone)") {
		//Debug.Log("Player shot me!");
		Destroy(this.gameObject);
	}
}