using UnityEngine;
using System.Collections;

public class BlackHoleProjectileScript : MonoBehaviour {

	// Use this for initialization
	void Start () {
		//Debug.Log ("my name is " + this.name);
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnCollisionEnter(Collision collision) {
		Destroy (this.gameObject);
	}
}
