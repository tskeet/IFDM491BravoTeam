#pragma strict

public var target : Transform;

private var agent : NavMeshAgent;

private var timer : int;
private var currentState : ScentReaveState;
private var previousPlayerLocation : Vector3;

public var scentNodeCopy : GameObject;
//public var scentTrail : Array;
public var scentTrail : GameObject[];
public var maxScentTrailLength : int;
public var currentIndex : int;
public var nextScentIndex : int;

public var scentScript : ScentNodeScript;

enum ScentReaveState {Follow, Wander, Attack};
function Start () {
	//scentTrail = new Array();
	agent = GetComponent.<NavMeshAgent>();
	currentState = ScentReaveState.Wander;
	scentTrail = new GameObject[maxScentTrailLength];
	previousPlayerLocation = target.position;
	currentIndex = 0;
	nextScentIndex = -1;
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
		timer = 70;
	} else {
		timer--;
	}
}

function AttackFunction() {

}

function FollowFunction() {

}

function WanderFunction() {
	var randomVector = Random.insideUnitCircle * 5;
	agent.speed = 5.0;
	agent.SetDestination((new Vector3(randomVector.x, 0.0, randomVector.y)) + agent.transform.position);
}

/**(function AddToScentTrail() {
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
		var midpoint = Vector3.Lerp(previousPlayerLocation, target.position, 0.5);
		var newScentNode : GameObject = GameObject.Instantiate(scentNodeCopy, midpoint, transform.rotation);
		if(currentIndex >= maxScentTrailLength) {
			currentIndex = 0;
		}
		
		if(scentTrail[currentIndex] != null) {
			GameObject.Destroy(scentTrail[currentIndex]);
		}
		scentTrail[currentIndex] = newScentNode;
		var tempScript : ScentNodeScript = newScentNode.GetComponent("ScentNodeScript");
		tempScript.SetIndex(currentIndex);
		currentIndex++;
		previousPlayerLocation = target.position;
	}
}

function OnTriggerEnter(other : Collider) {
	if(other.CompareTag("ScentNode") && (nextScentIndex < 0)) {
		Debug.Log("collided with scent node");
		agent.Stop(true);
		currentState = ScentReaveState.Follow;
		Debug.Log("Exiting out of collision");
	} else if(other.CompareTag("Player")) {
		Debug.Log("damaging the player.");
		//playerHealth.DamagePlayer(10.0);
	}
}