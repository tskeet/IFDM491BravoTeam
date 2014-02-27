var currentDimension: int;
var player : Transform;
var universe0Origin : Vector2;
var universe1Origin : Vector2;
var universe2Origin : Vector2;
var universe3Origin : Vector2;

// Use this for initialization
function Start () {
//	var player = GameObject.FindGameObjectWithTag("Player").transform;
	currentDimension = 0;
}

// Update is called once per frame
function Update () {

/**	if(Input.GetKeyUp("left ctrl")) {
		var oldx = player.position.x;
		var oldz = player.position.z;
		var relativex;
		var relativez;
		
		if(currentDimension == 0) {
			relativex = oldx + 16;
			relativez = oldz - 16;
		} else if(currentDimension == 1) {
			relativex = oldx - 16;
			relativez = oldz - 16;
		} else if(currentDimension == 2) {
			relativex = oldx + 16;
			relativez = oldz + 16;
		} else {
			relativex = oldx - 16;
			relativez = oldz + 16;
		}
	
		if(currentDimension == 3) {
			currentDimension = 0;
		} else {
			currentDimension++;
		}
		
		if(currentDimension == 0) {
			player.position = new Vector3((relativex - 16), 0, (relativez + 16));
		} else if(currentDimension == 1) {
			player.position = new Vector3((relativex + 16), 0, (relativez + 16));
		} else if(currentDimension == 2) {
			player.position = new Vector3((relativex - 16), 0, (relativez - 16));
		} else {
			player.position = new Vector3((relativex + 16), 0, (relativez - 16));
		}
	}**/
	
	if(Input.GetKeyUp(KeyCode.LeftControl)) {
	
/**		var oldx = player.position.x;
		var oldz = player.position.z;
		var relativex;
		var relativez;
		
		if(currentDimension == 0) {
			relativex = oldx + 50;
			relativez = oldz - 50;
		} else if(currentDimension == 1) {
			relativex = oldx - 50;
			relativez = oldz - 50;
		} else if(currentDimension == 2) {
			relativex = oldx + 50;
			relativez = oldz + 50;
		} else {
			relativex = oldx - 50;
			relativez = oldz + 50;
		}
	
		if(currentDimension == 3) {
			currentDimension = 0;
		} else {
			currentDimension++;
		}
		
		if(currentDimension == 0) {
			player.position = new Vector3((relativex - 50), 2, (relativez + 50));
		} else if(currentDimension == 1) {
			player.position = new Vector3((relativex + 50), 2, (relativez + 50));
		} else if(currentDimension == 2) {
			player.position = new Vector3((relativex - 50), 2, (relativez - 50));
		} else {
			player.position = new Vector3((relativex + 50), 2, (relativez - 50));
		}
		
*/
		var nextUniverse = currentDimension + 1;
		
	}
}

