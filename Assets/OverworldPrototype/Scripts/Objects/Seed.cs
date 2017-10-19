using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Seed : Interactable {
    public bool underPlayerControl;
    public bool plantSeed;
    public AudioClip plantedSeed;

    public GameObject plant;
    float counter; // for planting 'animation'

    public bool inInventory, canEquip;
    Inventory invent;

    public override void Start()
    {
        base.Start();
        counter = 2;
        invent = playerControl.gameObject.GetComponent<Inventory>();
    }

    public override void handleClickSuccess()
    {
        //Picks up seed
        if (!underPlayerControl && !inInventory)
        {
            base.handleClickSuccess();


            putThisInInvent();


        }
        if(inInventory && canEquip){
            print("kas SUCKS");
            base.handleClickSuccess();

            invent.takeFromInventory(int.Parse(transform.parent.name), true);
            inInventory = false;
           
            underPlayerControl = true;
            playerControl.isHoldingSeed = true;
            interactable = false;
            FindPlayerArm();


        }

    }

    void Update()
    {
  
        if (inInventory)
            canEquip = true;
        else
            canEquip = false;

        if (underPlayerControl)
        {
            //Process of planting seed
            if (plantSeed)
            {
                underPlayerControl = false;
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
                    Destroy(gameObject);
                }
                Debug.Log(playerControl.isHoldingSeed);
            }


            if (Input.GetKeyDown(KeyCode.Tab))
                putThisInInvent();

            if (Input.GetKeyDown(KeyCode.Space))
                dropItem();

        } else{
            transform.Rotate(0, 1, 0 * Time.deltaTime);
        }



     
    }

    void FindPlayerArm()
    {
        transform.SetParent(_player.transform);

        Vector3 armPosition = new Vector3(0.25f, 0f, 1f);

        transform.localPosition = armPosition;

        // Can show this with tiny animation and Arm movement

    }

    void putThisInInvent(){
        if (!invent.isFull)
        {

            invent.saveToInventory(this.transform, true);

            inInventory = true;
            underPlayerControl = false;
            interactable = true;
        }
        else
            Debug.Log("inventory full");

    }


    void dropItem(){

        this.transform.parent = null;
        interactable = true;
        underPlayerControl = false;

    }
}
