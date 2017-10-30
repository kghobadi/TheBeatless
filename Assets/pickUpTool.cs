using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pickUpTool : Interactable
{
    public Transform leftArmObj;
    leftArmManager lArmMan;

    public bool isRecorder, isShovel;

    // Use this for initialization
    public override void Start()
    {
        base.Start();
        lArmMan = leftArmObj.GetComponent<leftArmManager>();

    }

    public override void handleClickSuccess()
    {
        base.handleClickSuccess();
        takeTool();
    }

    void takeTool()
    {
        if (isRecorder)
        {
            transform.parent = leftArmObj;
            lArmMan.recorder = this.gameObject;
            lArmMan.recorderListener = GetComponent<AudioListener>();
            transform.localPosition = Vector3.zero;
            transform.localEulerAngles = Vector3.zero;
            GetComponent<SaveSound>().enabled = true;
            GetComponent<loadAudioClips>().enabled = true;
            this.enabled = false;
        }
    }


    // Update is called once per frame
    void Update()
    {



    }
}
