using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shovel : Interactable {


    public GameObject fertileGround;
    GameObject fertileGroundClone;
    Vector3 targetPosition;

    inventoryMan inventMan;
    


    // Rework this script so it can be attached to Terrain or larger land mass
    // Plant will spawn at player's mouse position Raycast Screenpoint to World

    public override void Start()
    {
        base.Start();
        inventMan = GetComponent<inventoryMan>();
        inventMan.isSingle = true;
    }


    void Update()
    {

        //could also attach Interactable to Terrain and only turn it on if shovel is equipped and within distance of water source
        // need some way to put this shit on a grid
        // need a way to unequip

        if (inventMan.underPlayerControl)
        {
            if (Input.GetMouseButton(0))
            {
                Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
                RaycastHit hit;

                if (Physics.Raycast(ray, out hit))
                {
                    if(hit.transform.gameObject.tag == "Ground" && Vector3.Distance(_player.transform.position, hit.transform.position) <= withinDistanceActive)
                    {
                        targetPosition = hit.point;
                        fertileGroundClone = Instantiate(fertileGround, targetPosition, Quaternion.identity);
                        soundBoard.PlayOneShot(InteractSound);
                    }
                }

            }
        }

    }

    
}
