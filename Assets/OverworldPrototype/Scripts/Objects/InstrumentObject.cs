using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InstrumentObject : Interactable {
    public bool underPlayerControl;
    public bool dropAnimal;
    public InputVCR inputVCR;

    public bool hasBeenFed;
    private GameObject sun;
    private Sun sunScript;


    public override void Start()
    {
        base.Start();
        inputVCR = GetComponent<InputVCR>();
        dropAnimal = false;
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();

    }

    public override void handleClickSuccess()
    {
        //picks up animal
		if (!underPlayerControl && !playerControl.isHoldingAnimal && !playerControl.isHoldingFood)
        {
            base.handleClickSuccess();
            underPlayerControl = true;
			playerControl.isHoldingAnimal = true;
            interactable = false;
            FindPlayerArm();
        }

        //feeds animal
        if (playerControl.isHoldingFood)
        {
            playerControl.GetComponentInChildren<Fruit>().feedAnimal = true;
            hasBeenFed = true;
        }
    }

    void Update()
    {
        //drops animal 
		if (dropAnimal )
		{
			underPlayerControl = false;
			playerControl.isHoldingAnimal = false;
			transform.SetParent(null);
			interactable = true;
            dropAnimal = false;
		}

        //checks for sundown / sun up
        if (sunScript.dayPassed)
        {
            StartCoroutine(FeedingReset());

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

    //Resets hasBeenFed
    IEnumerator FeedingReset()
    {
        yield return new WaitForSeconds(3);
        hasBeenFed = false;
    }

	
}
