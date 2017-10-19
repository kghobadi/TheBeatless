using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour {
    
    FirstPersonController playerControl;
    camMouseLook cameraControl;

    GameObject inventory;

    public bool inventoryOpen;
    public bool canOpen;

    AudioSource soundBoard;
    public AudioClip bagOpen;
    public AudioClip bagClose;

    public Transform[] slots;

    public bool[] isEmpty;

    public Transform testObj;

    void Start () {
        playerControl = GetComponent<FirstPersonController>();
        cameraControl = GetComponentInChildren<camMouseLook>();

        inventory = GameObject.FindGameObjectWithTag("Inventory");
        soundBoard = GetComponentInChildren<AudioSource>();

        inventory.SetActive(false);
        inventoryOpen = false;
        isEmpty = new bool[slots.Length];
        for (int i = 0; i < isEmpty.Length;i++){
            isEmpty[i] = true;
        }
	}
	

	void Update () {
        if (Input.GetKeyDown(KeyCode.Tab) && canOpen)
        {
            openInventory();

        }
        if (Input.GetKeyDown(KeyCode.Tab) && !canOpen)
        {
            closeInventory();   
        }

        if (inventoryOpen)
        {
            canOpen = false;

            if (Input.GetKeyDown(KeyCode.Space))
            {
                takeFromInventory(1, true);

            }
    
        }
        else
        {
            canOpen = true;

            if (Input.GetKeyDown(KeyCode.Space))
            {
                saveToInventory(testObj, true);

            }
        }

        //want to make a real-time grid, child items to Inventory, send them to space, if space is taken check object tag, if dif object move to new space
        //if inventory is full, play inv full sound


    }

    public void openInventory(){
        playerControl.enabled = false;
        cameraControl.enabled = false;
        Cursor.lockState = CursorLockMode.None;
        inventory.SetActive(true);
        cameraControl.transform.LookAt(inventory.transform.position);
        inventoryOpen = true;
        soundBoard.PlayOneShot(bagOpen);
    }

    public void closeInventory(){
        playerControl.enabled = true;
        cameraControl.enabled = true;
        Cursor.lockState = CursorLockMode.Locked;
        inventory.SetActive(false);
        inventoryOpen = false;
        soundBoard.PlayOneShot(bagClose);
    }



    public void saveToInventory(Transform objectToSave,bool isSingle){

        if(isSingle){
            
            int indexToSaveIn = 0;

            for (int i = 0; i < indexToSaveIn +1;i++){
                print(indexToSaveIn);
                if(isEmpty[i]){
                    objectToSave.parent = slots[indexToSaveIn];
                    objectToSave.localPosition = Vector3.up;
                    isEmpty[indexToSaveIn] = false;
                } else{
                    indexToSaveIn++;
                }
            }


        }else{



        }

    }

    public void takeFromInventory(int slotNumber, bool isSingle){

        if(isSingle){
            closeInventory();
            Transform takeOut = slots[slotNumber].GetChild(0);
            takeOut.parent = this.transform;
            takeOut.localPosition = new Vector3(0, 0, 1);
            isEmpty[slotNumber] = true;

        }

    }


}
