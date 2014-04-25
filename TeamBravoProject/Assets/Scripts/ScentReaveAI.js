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

enum ScentReaveState {Follow, Wander, Attack};

function Start () {
	//scentTrail = new Array();
	agent = GetComponent.<NavMeshAgent>();
	timer = 70;
	currentState = ScentReaveState.Wander;
	previousPlayerLocation = target.position;
	scentTrail = new GameObject[maxScentTrailLength];
	
	nextIndex = -1;
}

function Update () {
	this.AddToScentTrail();
	if(timer <= 0) {
		if(currentState == ScentReaveState.Attack) {
			this.AttackFunction();
		} else if(currentState == ScentReaveState.Follow) {
			this.FollowFunction();
		} else {
			this.WanderFunction();
		}
		if(currentState != ScentReaveState.Follow) {
			timer = 70;
		}
	} else {
		timer--;
	}
}

function AttackFunction() {

}

function FollowFunction() {
	/**if(scentTrail[nextIndex] == null) {
		Debug.Log("null object is detected");
	}*/
	if((scentTrail[nextIndex] == null) || (nextIndex >= (maxScentTrailLength - 1))) {
		nextIndex = 0;
	} else {
		nextIndex++;
	}
	Debug.Log("nextIndex is " + nextIndex);
	agent.transform.position = scentTrail[nextIndex].transform.position;
	agent.transform.rotation = scentTrail[nextIndex].transform.rotation;
	timer = 0;
}

function WanderFunction() {
	var randomVector = Random.insideUnitCircle * 5;
	agent.speed = 5.0;
	agent.SetDestination((new Vector3(randomVector.x, 0.0, randomVector.y)) + agent.transform.position);
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
	if(Vector3.Distance(previousPlayerLocation, target.position) > 1.0) {
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
	if(other.CompareTag("ScentNode") && (nextIndex < 0)) {
		agent.Stop(true);
		currentState = ScentReaveState.Follow;
		var tempScript : ScentNodeScript = other.gameObject.GetComponent("ScentNodeScript");
		Debug.Log("triggered ScentNode with index " + tempScript.GetIndex());
		nextIndex = tempScript.GetIndex();
		agent.transform.position = scentTrail[nextIndex].transform.position;
		agent.transform.rotation = scentTrail[nextIndex].transform.rotation;
	} else if(other.gameObject.tag == "Player") {
		Debug.Log("damaging the player.");
		//ayerHealth.DamagePlayer(10.0);
	}
}