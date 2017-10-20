using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shovel : Interactable {


    public GameObject fertileGround;
    GameObject fertileGroundClone;
    Vector3 targetPosition;
    bool isEquipped;


    // Rework this script so it can be attached to Terrain or larger land mass
    // Plant will spawn at player's mouse position Raycast Screenpoint to World

    public override void Start()
    {
        base.Start();
        isEquipped = true;
    }

    public override void handleClickSuccess()
    {
        //Only runs if player is holding a Seed
        if (!isEquipped && interactable)
        {
            FindPlayerArm();
            interactable = false;
            isEquipped = true;
        }
    }

    void Update()
    {

        //could also attach Interactable to Terrain and only turn it on if shovel is equipped and within distance of water source
        // need some way to put this shit on a grid
        // need a way to unequip

        if (isEquipped)
        {
            if (Input.GetMouseButton(0))
            {
                Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
                RaycastHit hit;

                if (Physics.Raycast(ray, out hit))
                {
                    if(hit.transform.gameObject.tag == "Ground")
                    {
                        targetPosition = hit.point;
                        fertileGroundClone = Instantiate(fertileGround, targetPosition, Quaternion.identity);
                        soundBoard.PlayOneShot(InteractSound);
                    }
                }

            }
        }
        else
        {
            interactable = true;
        }

    }

 void FindPlayerArm()
    {
        transform.SetParent(_player.transform);

        Vector3 armPosition = new Vector3(0.25f, 0f, 1f);

        transform.localPosition = armPosition;

        // Can show this with tiny animation and Arm movement

    }

    
}
