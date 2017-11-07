using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class checkNeighbours : MonoBehaviour {

	Transform[] neighbours;
	Vector3 topRight;
	Vector3 btmRight;
	Vector3 topLeft;
	Vector3 btmLeft;

	// Use this for initialization
	void Start () {
		topRight = new Vector3 (1, 0, 1);
		btmRight = new Vector3 (1, 0, -1);
		topLeft = new Vector3 (-1, 0, 1);
		btmLeft = new Vector3 (-1, 0, -1);
	}
	
	// Update is called once per frame
	void Update () {

		Vector3 fwd = transform.TransformDirection (Vector3.forward);
		Vector3 bck = transform.TransformDirection (Vector3.back);

		RaycastHit top;
		RaycastHit bottom;
		RaycastHit upRight;
		RaycastHit dwnRight;
		RaycastHit upLeft;
		RaycastHit dwnLeft;

		if(Physics.Raycast(transform.position, fwd, out top, 1f)){
			if (top.collider.GetComponent<playSequence> ().species == gameObject.GetComponent<playSequence> ().species) {
				GetComponent<playSequence> ().start = top.collider.GetComponent<playSequence> ().start;
				print ("topYes");
			}
		}
		if(Physics.Raycast(transform.position, bck, out bottom, 1f)){
			if (bottom.collider.GetComponent<playSequence> ().species == gameObject.GetComponent<playSequence> ().species) {
				GetComponent<playSequence> ().start = bottom.collider.GetComponent<playSequence> ().start;
				print ("bottomYes");
			}
		}
		if(Physics.Raycast(transform.position, topRight,out upRight, 1f)){
			if (upRight.collider.GetComponent<playSequence> ().species == gameObject.GetComponent<playSequence> ().species) {
				GetComponent<playSequence> ().start = upRight.collider.GetComponent<playSequence> ().start;
				print ("upRightYes");
			}
		}
		if(Physics.Raycast(transform.position, btmRight, out dwnRight, 1f)){
			if (dwnRight.collider.GetComponent<playSequence> ().species == gameObject.GetComponent<playSequence> ().species) {
				GetComponent<playSequence> ().start = dwnRight.collider.GetComponent<playSequence> ().start;
				print ("dwnRightYes");
			}
		}
		if(Physics.Raycast(transform.position, topLeft, out upLeft, 1f)){
			if (upLeft.collider.GetComponent<playSequence> ().species == gameObject.GetComponent<playSequence> ().species) {
				GetComponent<playSequence> ().start = upLeft.collider.GetComponent<playSequence> ().start;
				print ("upLeftYes");
			}
		}
		if(Physics.Raycast(transform.position, btmLeft, out dwnLeft, 1f)){
			if (dwnLeft.collider.GetComponent<playSequence> ().species == gameObject.GetComponent<playSequence> ().species) {
				GetComponent<playSequence> ().start = dwnLeft.collider.GetComponent<playSequence> ().start;
				print ("dwnLeftYes");
			}
		}

		//Vector3 


		//RaycastHit rayHit;
		//if(Physics.Raycast(, out rayHit)
	}
}
