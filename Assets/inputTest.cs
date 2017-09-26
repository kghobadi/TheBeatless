using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class inputTest : MonoBehaviour {

	InputVCR vcr;
	// Use this for initialization
	void Start () {
		vcr = GetComponent<InputVCR>();
	}
	
	// Update is called once per frame
	void Update () {

		if(vcr.GetKey("w")){
			transform.position += new Vector3(0, Time.deltaTime * 10, 0);
		}

		if(vcr.GetKey("s")){
			transform.position -= new Vector3(0, Time.deltaTime * 10, 0);
		}
	}
}
