using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Seed : Interactable {
    public bool underPlayerControl;
    public bool plantSeed;
    public AudioClip plantedSeed;

    public GameObject plant;
    float counter; // for planting 'animation'

    public override void Start()
    {
        base.Start();
        counter = 2;
    }

    public override void handleClickSuccess()
    {
        //Picks up seed
        if (!underPlayerControl && !playerControl.isHoldingAnimal && !playerControl.isHoldingFood && !playerControl.isHoldingSeed)
        {
            base.handleClickSuccess();
            underPlayerControl = true;
            playerControl.isHoldingSeed = true;
            interactable = false;
            playerControl.gameObject.GetComponent<Inventory>().saveToInventory(this.transform, true);
        }
    }

    void Update()
    {
        //rotates seed constantly
        transform.Rotate(0, 1, 0 * Time.deltaTime);

        //Process of planting seed
        if (plantSeed)
        {
            underPlayerControl = false;
            transform.SetParent(null);
            if(counter > 0) //spirals seed downward into the ground
            {
                transform.Translate(0,-0.01f, 0);
                counter -= 1 * Time.deltaTime;
            }
            else
            {
                playerControl.isHoldingSeed = false;
                soundBoard.PlayOneShot(plantedSeed);
                Destroy(gameObject);
            }
            Debug.Log(playerControl.isHoldingSeed);
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
