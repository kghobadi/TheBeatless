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
            playerControl.GetComponentInChildren<Seed>().plantSeed = true;

            //creates Clone of plant contained in Seed
            plantClone = Instantiate(playerControl.GetComponentInChildren<Seed>().plant, new Vector3(transform.position.x, transform.position.y + 1, transform.position.z), Quaternion.identity);
            plantClone.SetActive(false);

            //Waits until Seed reaches ground to Activate plantClone
            StartCoroutine(SeedPlanted());
            seedPlanted = false;
            growingPlant = true;
            
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


    //Waits for seed to spiral into the Ground 
    IEnumerator SeedPlanted()
    {
        yield return new WaitUntil(() => playerControl.isHoldingSeed == false);
        plantClone.SetActive(true);
    }

    
}
