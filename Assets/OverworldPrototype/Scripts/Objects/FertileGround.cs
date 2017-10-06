using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FertileGround : Interactable {
    public bool growingPlant;
    public bool seedPlanted;

    public override void Start()
    {
        base.Start();
        interactable = false;

    }

    public override void handleClickSuccess()
    {
        if (!growingPlant && playerControl.isHoldingSeed)
        {
            base.handleClickSuccess();
            interactable = false;
            seedPlanted = true;
        }
        // 
    }

    void Update()
    {
        if (playerControl.isHoldingSeed)
        {
            interactable = true;
        }
        if (seedPlanted)
        {
            Instantiate(playerControl.GetComponentInChildren<Seed>().plant, transform.position, Quaternion.identity);
            playerControl.GetComponentInChildren<Seed>().plantSeed = true;
            seedPlanted = false;
            growingPlant = true;

        }

    }

    
}
