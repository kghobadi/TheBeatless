using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurnRecorderOn : MonoBehaviour {

    GameObject recorderObj;
    AudioListener recorderListener, thisListener;

	// Use this for initialization
	void Start () {

        recorderObj = GameObject.FindWithTag("recorder");
        recorderListener = recorderObj.GetComponent<AudioListener>();
        thisListener = GetComponent<AudioListener>();
        recorderObj.SetActive(false);
	}
	
	// Update is called once per frame
	void Update () {

        if(Input.GetKeyDown(KeyCode.E)){
            if (!recorderObj.activeSelf)
            {
                recorderObj.SetActive(true);

            }else{
                recorderObj.SetActive(false);
            }

        }





        if(recorderObj.transform.parent == this.transform.parent && recorderObj.activeSelf){
            recorderListener.enabled = true;
            thisListener.enabled = false;
        }else{
            recorderListener.enabled = false;
            thisListener.enabled = true;
        }
		
	}
}
