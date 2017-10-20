using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class inventoryMan : Interactable {
    public bool underPlayerControl;
    public bool inInventory, canEquip;
    Inventory invent;

    public bool isSingle;

    public override void Start()
    {
        base.Start();
        invent = playerControl.gameObject.GetComponent<Inventory>();
    }

    public override void handleClickSuccess()
    {
        //inventory stuff
        if (!underPlayerControl && !inInventory)
        {
            base.handleClickSuccess();


            putThisInInvent();


        }
        if (inInventory && canEquip)
        {
            
            base.handleClickSuccess();

            takeFromInvent();
            print("kas SUCKS");
           


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

            if (Input.GetKeyDown(KeyCode.Tab))
                putThisInInvent();
            
            if (Input.GetKeyDown(KeyCode.Space))
                dropItem();
        }

        Debug.Log(inInventory);

    }


    void FindPlayerArm()
    {
        transform.SetParent(_player.transform);

        Vector3 armPosition = new Vector3(0.25f, 0f, 1f);

        transform.localPosition = armPosition;

        // Can show this with tiny animation and Arm movement

    }

    void putThisInInvent()
    {
        if (!invent.isFull)
        {

            invent.saveToInventory(this.transform, isSingle);

            inInventory = true;
            underPlayerControl = false;
            interactable = true;
        }
        else
            Debug.Log("inventory full");

    }

    void takeFromInvent(){
        int slotNum;
        int.TryParse(transform.parent.name,out slotNum);
//        print(slotNum);
        invent.takeFromInventory(slotNum, true);
        inInventory = false;

        underPlayerControl = true;

        interactable = false;
        FindPlayerArm();

    }


    void dropItem()
    {

        this.transform.parent = null;
        interactable = true;
        underPlayerControl = false;

    }

}
