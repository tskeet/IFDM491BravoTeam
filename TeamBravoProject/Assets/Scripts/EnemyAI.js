#pragma strict

/**var player : Transform;
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
}**/

/*var enemy : Transform;
var speed: float;
     
function Update() {
    if (  Vector3.Distance( enemy.position, transform.position) < 100  ) {
        print("player is close");
         
        transform.position = (enemy.position - transform.position ).normalized * speed * Time.deltaTime;
    } else {
        print("not close yet");
        print(Vector3.Distance( enemy.position, transform.position ));
    }
}*/

var target : Transform;
var moveSpeed : float = 3f;
var rotationSpeed : float = 3f;

var myTransform : Transform;

function Awake() {
	myTransform = transform;
}

function Start() {
	target = GameObject.FindWithTag("Player").transform;
}

function Update() {
	myTransform.rotation = Quaternion.Slerp(myTransform.rotation, Quaternion.LookRotation(target.position - myTransform.position), rotationSpeed*Time.deltaTime);
	
	myTransform.position += myTransform.forward * moveSpeed * Time.deltaTime;
}