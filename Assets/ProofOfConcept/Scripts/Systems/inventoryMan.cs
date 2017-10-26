using System.Collections;
using System.Collections.Generic;
using UnityEngine;


//HOW TO USE: place on same object as objects that can go in inventory, 
//make reference of it in its behavior script and make it only do stuff if underPlayerControl
//is true. ALSO: set if isSingle on the behavior script (probably on start)

//IF IN DOUBT, LOOK AT SEED.CS FOR REFERENCE.  



public class inventoryMan : Interactable {
    public bool underPlayerControl;
    public bool inInventory, canEquip;
    Inventory invent;

    public bool isSingle;

    int originalLayer;

    public override void Start()
    {
        base.Start();
        invent = playerControl.gameObject.GetComponent<Inventory>();

        originalLayer = gameObject.layer;
    }

    public override void handleClickSuccess()
    {
        //inventory stuff
        if (!underPlayerControl && !inInventory && interactable && !invent.inventoryOpen)
        {
            base.handleClickSuccess();


            putThisInInvent();


        }
        if (inInventory && canEquip)
        {
            
            base.handleClickSuccess();

            takeFromInvent();
//            print("kas SUCKS");
           


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

//        Debug.Log(inInventory);

    }


    void FindPlayerArm()
    {
        transform.SetParent(_player.transform);

        Vector3 armPosition = new Vector3(0.25f, 0f, 1f);

        transform.localPosition = armPosition;
        transform.localScale = transform.localScale * 2;
        gameObject.layer = originalLayer;
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

        //underPlayerControl = true;//delay this for a frame


        interactable = false;
        FindPlayerArm();
        StartCoroutine(waitFrame());

    }


    void dropItem()
    {

        this.transform.parent = null;
        interactable = true;
        underPlayerControl = false;

    }

    IEnumerator waitFrame(){
        yield return new WaitForEndOfFrame();
        underPlayerControl = true;

    }

}
