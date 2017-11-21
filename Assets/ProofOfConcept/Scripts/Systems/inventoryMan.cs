using System.Collections;
using System.Collections.Generic;
using UnityEngine;


//HOW TO USE: place on same object as objects that can go in inventory, 
//make reference of it in its behavior script and make it only do stuff if underPlayerControl
//is true. ALSO: set if isSingle on the behavior script (probably on start)

//IF IN DOUBT, LOOK AT SEED.CS FOR REFERENCE.  



public class inventoryMan : Interactable
{
    public bool underPlayerControl;
    public bool inInventory, canEquip;
    Inventory invent;

    public bool isSingle;

    int originalLayer;

    public int slotNumRetake;

    GameObject rightArmObj;

    public override void Start()
    {
        base.Start();
        invent = _player.GetComponent<Inventory>();
        interactable = true;

        rightArmObj = GameObject.FindGameObjectWithTag("rightArm");

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


    public void FindPlayerArm()
    {
        transform.SetParent(rightArmObj.transform);

        transform.localPosition = Vector3.zero;
        transform.localScale = transform.localScale * 2;
        gameObject.layer = originalLayer;
        // Can show this with tiny animation and Arm movement

    }

    public void putThisInInvent()
    {
        if (!invent.isFull)
        {

            invent.saveToInventory(this.transform, isSingle);

            inInventory = true;
            underPlayerControl = false;
            interactable = true;
            invent.somethingEquipped = false;
        }
        else
            Debug.Log("inventory full");

    }

    public void takeFromInvent()
    {
        int slotNum;
        int.TryParse(transform.parent.name, out slotNum);
        //        print(slotNum);
        int childIndex;
        childIndex = transform.GetSiblingIndex();
        int slotChildCount;
        slotChildCount = transform.parent.childCount;

        invent.takeFromInventory(slotNum, isSingle, childIndex, slotChildCount);
        inInventory = false;
        invent.currentObject = slotNum;
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

    IEnumerator waitFrame()
    {
        yield return new WaitForEndOfFrame();
        underPlayerControl = true;

    }

}
