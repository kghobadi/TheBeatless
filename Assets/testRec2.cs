using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class testRec2 : MonoBehaviour {

    public GameObject g;
    InputVCR vcr;

	// Use this for initialization
	void Start () {
        vcr = g.GetComponent<InputVCR>();
	}
	
	// Update is called once per frame
	void Update () {

        if (Input.GetKeyDown(KeyCode.Space))
            vcr.Record();

         if (Input.GetKeyDown(KeyCode.C))
                vcr.Play();

    }
}
