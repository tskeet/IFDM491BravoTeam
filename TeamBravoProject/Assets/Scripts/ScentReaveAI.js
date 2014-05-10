#pragma strict

public var target : Transform;

private var agent : NavMeshAgent;

private var timer : int;
public var currentState : ScentReaveState;
private var previousPlayerLocation : Vector3;


public var scentNodeCopy : GameObject; //a reference to the scent nodes that the GameObject.Instantiate method will use to create new scent nodes
//public var scentTrail : Array;
public var scentTrail : GameObject[]; //a collection of scentNodes
public var maxScentTrailLength : int; //maximum length of scent trail
public var scentIndex : int; //keeps track of current index in scentTrail

public var nextIndex : int;

public var stunTimer : int;

enum ScentReaveState {Follow, Wander, Attack, Stun};

function Start () {
	//scentTrail = new Array();
	agent = GetComponent.<NavMeshAgent>();
	timer = 70;
	currentState = ScentReaveState.Wander;
	previousPlayerLocation = target.position;
	scentTrail = new GameObject[maxScentTrailLength];
	animation["Take 001"].speed = 2.0;
	
	nextIndex = -1;
	stunTimer = -1;
}

function Update () {
	this.AddToScentTrail();
	if(timer <= 0) {
		if(currentState == ScentReaveState.Attack) {
			this.AttackFunction();
		} else if(currentState == ScentReaveState.Follow) {
			this.FollowFunction();
		} else if(currentState == ScentReaveState.Stun){
			this.StunFunction();
		} else {
			this.WanderFunction();
		}
		/*if(currentState != ScentReaveState.Follow) {
			timer = 70;
		}*/
	} else {
		timer--;
	}
}

function StunFunction() {
	//Debug.Log("entered scent Reave StunFunction");
	if(stunTimer < 0) {
		agent.Stop(true);
		var ani : Animation = gameObject.animation;
		ani["Take 001"].speed = 0.0;
		currentState = ScentReaveState.Stun;
		stunTimer = 350;
		timer = 0;
	} else if(stunTimer > 0) {
		stunTimer--;
	} else {
		gameObject.animation["Take 001"].speed = 2.0;
		currentState = ScentReaveState.Wander;
		stunTimer = -1;
		nextIndex = -1;
		//ClearScentTrail();
		timer = 0;
	}
}

function AttackFunction() {

}

/*function FollowFunction() {
	if(scentTrail[nextIndex] == null) {
		Debug.Log("null object is detected");
	}
	Debug.Log("nextIndex = " + nextIndex + " scentIndex = " + scentIndex);
	if((nextIndex + 1) == scentIndex) {
		currentState = ScentReaveState.Attack;
	} else {
		if((scentTrail[nextIndex] == null) || ((nextIndex + 1) >= maxScentTrailLength)) {
			nextIndex = 0;
		} else {
			nextIndex++;
		}
		///Debug.Log("nextIndex is " + nextIndex);

		agent.transform.position = scentTrail[nextIndex].transform.position;
		agent.transform.rotation = scentTrail[nextIndex].transform.rotation;
		timer = 0;
	}
}*/

function FollowFunction() {
	//Debug.Log("remainingDistance = " + agent.remainingDistance);
	if(agent.remainingDistance < 15.0) {
		//Debug.Log("made it to here");
		agent.Stop(true);
		if(scentTrail[nextIndex] == null) {
			//Debug.Log("null object is detected");
		}
		if((nextIndex + 1) == scentIndex) {
			currentState = ScentReaveState.Attack;
		} else {
			if((scentTrail[nextIndex] == null) || ((nextIndex + 1) >= maxScentTrailLength)) {
				nextIndex = 0;
			} else {
				nextIndex++;
			}
			agent.acceleration = 1000.0;
			agent.speed = 100.0;
			var raycast : RaycastHit;
			Physics.Raycast(scentTrail[nextIndex].transform.position, -Vector3.up, raycast);
			agent.SetDestination(raycast.point);
			//timer = 0;
		}
	}
	timer = 0;
}

function WanderFunction() {
	var randomVector = Random.insideUnitCircle * 20;
	agent.speed = 50;
	//agent.SetDestination((new Vector3(randomVector.x, -19.22287, randomVector.y)) + agent.transform.position);
	var raycast : RaycastHit;
	Physics.Raycast(Vector3(randomVector.x + transform.position.x, transform.position.y, randomVector.y + transform.position.z), -Vector3.up, raycast);
	agent.SetDestination(raycast.point);
	timer = 70;
}

/**function AddToScentTrail() {
	if(Vector3.Distance(previousPlayerLocation, target.position) > 1.0) {
		var midpoint = Vector3.Lerp(previousPlayerLocation, target.position, 0.5);
		//var angle = 
		var newScentNode = GameObject.Instantiate(scentNodeCopy, midpoint, transform.rotation);
		if(scentTrail.length >= maxScentTrailLength) {
			//var scentNodeToBeRemoved = scentTrail.Pop
		}
		scentTrail.Add(newScentNode);
		previousPlayerLocation = target.position;
	}
}*/

function AddToScentTrail() {
	//Debug.Log("adding node as " + gameObject.name);
	if(Vector3.Distance(previousPlayerLocation, target.position) > 15.0) {
		var newScentNode : GameObject = GameObject.Instantiate(scentNodeCopy, target.position, target.rotation);  
		if(scentIndex >= maxScentTrailLength) {
			scentIndex = 0;
		}
		
		if(scentTrail[scentIndex] != null) {
			GameObject.Destroy(scentTrail[scentIndex]);
		}
		
		scentTrail[scentIndex] = newScentNode;
		
		var tempScript : ScentNodeScript = newScentNode.GetComponent("ScentNodeScript");
		tempScript.SetIndex(scentIndex);
		
		scentIndex++;
		previousPlayerLocation = target.position;
	}
}

function OnTriggerEnter(other : Collider) {
	if(other.CompareTag("ScentNode") && (nextIndex < 0) && (currentState == ScentReaveState.Wander)) {
		agent.Stop(true);
		currentState = ScentReaveState.Follow;
		var tempScript : ScentNodeScript = other.gameObject.GetComponent("ScentNodeScript");
		//Debug.Log("triggered ScentNode with index " + tempScript.GetIndex());
		nextIndex = tempScript.GetIndex();
		//agent.transform.position = scentTrail[nextIndex].transform.position;
		//agent.transform.rotation = scentTrail[nextIndex].transform.rotation;
		var raycast : RaycastHit;
		Physics.Raycast(scentTrail[nextIndex].transform.position, -Vector3.up, raycast);
		agent.SetDestination(raycast.point);
	} else if(other.gameObject.tag == "Player") {
		//Debug.Log("damaging the player.");
		//ayerHealth.DamagePlayer(10.0);
		var health : HealthScript = other.GetComponent(HealthScript);
		health.DamagePlayer(10.0);
		//currentState = ScentReaveState.Wander;
		//nextIndex = -1;
	}
}

function PrepareDeactivation() {
	currentState = ScentReaveState.Wander;
	agent.animation["Take 001"].speed = 2.0;
	nextIndex = -1;
	this.ClearScentTrail();
}

function ClearScentTrail() {
	var i : int;
	for(i = 0; i < maxScentTrailLength; i++) {
		GameObject.Destroy(scentTrail[i]);
	}
}