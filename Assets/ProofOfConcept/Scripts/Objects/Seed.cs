using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Seed : Interactable {
    
    public bool plantSeed;
    public AudioClip plantedSeed;

    public GameObject plant;
    GameObject plantClone;
    float counter; // for planting 'animation'

    inventoryMan inventMan;



    public override void Start()
    {
        base.Start();
        counter = 2.5f;
        inventMan = GetComponent<inventoryMan>();
        inventMan.isSingle = true;

        //spawns plant and sets false
        plantClone = Instantiate(plant, transform.position, Quaternion.identity);
        plantClone.transform.SetParent(gameObject.transform);
        plantClone.SetActive(false);

    }


    void Update()
    {

        if (inventMan.underPlayerControl)
        {
            playerControl.isHoldingSeed = true;
            //Process of planting seed
            if (plantSeed)
            {
                playerControl.isHoldingSeed = false;
                inventMan.underPlayerControl = false;
                PlantSeed();
            }

        }
        else if(!inventMan.underPlayerControl && plantSeed)
        {
            PlantSeed();
        }
       
        transform.Rotate(0, 1, 0 * Time.deltaTime);
        



     
    }

    void PlantSeed()
    {
        transform.SetParent(null);
        if (counter > 0) //spirals seed downward into the ground
        {
            transform.Translate(0, -0.01f, 0);
            counter -= 1 * Time.deltaTime;
        }
        else
        {
            //awaken plant & destroy seed
            soundBoard.PlayOneShot(plantedSeed);
            plantClone.SetActive(true);
            plantClone.transform.localPosition = plantClone.transform.localPosition + new Vector3(0, 2.5f, 0);
            plantClone.transform.SetParent(null);
            Destroy(gameObject);
        }
    }


}
