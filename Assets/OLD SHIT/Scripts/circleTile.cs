using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class circleTile : MonoBehaviour {


	
    pathMakerManager pmMan;
    Renderer rend;

	// Use this for initialization
	void Start () {

        pmMan = transform.parent.gameObject.GetComponent<pathMakerManager>();

        rend = GetComponent<Renderer>();
           // .material.color = new Color(pmMan.colorFloat,pmMan.colorFloat,pmMan.colorFloat,1f);



	

	}
	
	// Update is called once per frame
	void Update () {

        transform.localScale = Vector3.ClampMagnitude(transform.localScale,1);

        if (pmMan.globalSphereCount < pmMan.maxSphereSize){

            transform.localScale += Vector3.one * Time.deltaTime * 0.01f;
            //transform.localScale = Vector3.one * pmMan.globalSphereCount * Time.deltaTime * 0.01f;
            rend.material.color += new Color(-0.002f, -0.002f, -0.002f);
        }

	}



}
