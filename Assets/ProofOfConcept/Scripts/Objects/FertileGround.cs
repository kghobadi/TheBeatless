using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FertileGround : Interactable {
    public bool growingPlant;
    private bool seedPlanted;

    GameObject plantClone;


    // Rework this script so it can be attached to Terrain or larger land mass
    // Plant will spawn at player's mouse position Raycast Screenpoint to World

    public override void Start()
    {
        base.Start();
    }

    public override void handleClickSuccess()
    {
        //Only runs if player is holding a Seed
        if (!growingPlant && playerControl.isHoldingSeed)
        {
            base.handleClickSuccess();
            seedPlanted = true;
        }
    }

    void Update()
    {

        if (seedPlanted)
        {
            playerControl.GetComponentInChildren<Seed>().gameObject.transform.position = transform.position + new Vector3(0, 2, 0);
            playerControl.GetComponentInChildren<Seed>().plantSeed = true;
            growingPlant = true;
            seedPlanted = false;
        }

        if (playerControl.isHoldingSeed && !growingPlant)
        {
            interactable = true;
        }
        else
        {
            interactable = false;
        }


    }


    
}
