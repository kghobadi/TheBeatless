using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InstrumentObject : Interactable {
    public bool underPlayerControl;
    public bool dropAnimal;
    public InputVCR inputVCR;



    public override void Start()
    {
        base.Start();
        inputVCR = GetComponent<InputVCR>();
        dropAnimal = false;

    }

    public override void handleClickSuccess()
    {
		if (!underPlayerControl && !playerControl.isHoldingAnimal)
        {
            base.handleClickSuccess();
            // move position to player's arm 
            underPlayerControl = true;
			playerControl.isHoldingAnimal = true;
            interactable = false;
            FindPlayerArm();
        }
        // 
    }

    void Update()
    {
        
		//StartCoroutine(heldObjectActions());

		if (dropAnimal )
		{
			underPlayerControl = false;
			playerControl.isHoldingAnimal = false;
			transform.SetParent(null);
			interactable = true;
            dropAnimal = false;
		}

    }

    //How do we want to change tracks or select tracks??? What will the visualization be? 
    //void changeTrack(trackId)
    //{
    //    AnimalTracks.Instance.AssignTrackToAnimal(this.gameObject, trackId);
    //}

    void FindPlayerArm()
    {
        transform.SetParent(_player.transform);
        
        Vector3 armPosition = new Vector3(0.5f, 0f, 1f);

        transform.localPosition = armPosition;

        // Can show this with tiny animation and Arm movement

    }

	
}
