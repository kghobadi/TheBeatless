using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InstrumentObject : Interactable {
    public float movespeed;
    public bool underPlayerControl;

    public override void handleClickSuccess()
    {
        if (!underPlayerControl)
        {
            base.handleClickSuccess();
            // move position to player's arm 
            underPlayerControl = true;
            interactable = false;
            FindPlayerArm();
        }
        // 
    }

    void Update()
    {
        if (underPlayerControl) // && Input.GetKeyDown(KeyCode.Space))
        {
            //Press button to enable music and recording 
            //Find script for musical instrument, find sounds etc

        }

        if (Input.GetKeyDown(KeyCode.Space))
        {
            underPlayerControl = false;
            interactable = true;
        }
    }

    void FindPlayerArm()
    {
        transform.SetParent(_player.transform);
        
        Vector3 armPosition = new Vector3(0.5f, 0f, 1f);

        transform.localPosition = armPosition;

        //if(Vector3.Distance(transform.localPosition, armPosition) > 0)
        //{
        //    transform.localPosition = Vector3.MoveTowards(transform.localPosition, armPosition, movespeed * Time.deltaTime);
        //}
    }
}
