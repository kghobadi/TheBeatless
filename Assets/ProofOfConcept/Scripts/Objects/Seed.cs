using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Seed : Interactable {
    
    public bool plantSeed;
    public AudioClip plantedSeed;

    public GameObject plant;
    public float counter; // for planting 'animation'

    inventoryMan inventMan;



    public override void Start()
    {
        base.Start();
        counter = 2;
        inventMan = GetComponent<inventoryMan>();
        inventMan.isSingle = true;

    }


    void Update()
    {

        if (inventMan.underPlayerControl)
        {
            print("kas sucks");
            playerControl.isHoldingSeed = true;
            //Process of planting seed
            if (plantSeed)
            {
                //inventMan.underPlayerControl = false;
                transform.SetParent(null);
                if (counter > 0) //spirals seed downward into the ground
                {
                    transform.Translate(0, -0.01f, 0);
                    counter -= 1 * Time.deltaTime;
                }
                else
                {
                    playerControl.isHoldingSeed = false;
                    soundBoard.PlayOneShot(plantedSeed);
                    inventMan.underPlayerControl = false;
                    Destroy(gameObject);
                }
                Debug.Log(playerControl.isHoldingSeed);
            }




        } else{
            transform.Rotate(0, 1, 0 * Time.deltaTime);
        }



     
    }


}
