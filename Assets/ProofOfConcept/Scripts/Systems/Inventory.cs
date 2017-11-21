﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour
{

    FirstPersonController fpc;
    camMouseLook cameraControl;

    GameObject inventory;

    public bool inventoryOpen;
    public bool canOpen;

    public Vector3 inventoryPos;

    public int currentObject;

    AudioSource soundBoard;
    public AudioClip bagOpen;
    public AudioClip bagClose;

    public Transform[] slots;

    public bool[] isEmpty;

    public int emptyCounter;

    int emptyCount;

    public bool isFull;

    public GameObject inventCam;

    public bool somethingEquipped;

    GameObject rightArmObj;

    //public bool usedNowTakeAgain;

    void Start()
    {
        fpc = GetComponent<FirstPersonController>();
        cameraControl = Camera.main.GetComponent<camMouseLook>();

        inventory = GameObject.FindGameObjectWithTag("Inventory");
        soundBoard = GetComponentInChildren<AudioSource>();

        rightArmObj = GameObject.FindGameObjectWithTag("rightArm");
        inventory.transform.position = new Vector3(1000, 1000, 1000);

        inventoryOpen = false;
        isEmpty = new bool[slots.Length];
        for (int i = 0; i < isEmpty.Length; i++)
        {
            isEmpty[i] = true;
        }
        emptyCounter = slots.Length;
        somethingEquipped = false;
    }


    void Update()
    {

        isFull = checkFull();

        emptyCounter = checkEmpty();

        if ((Input.GetKeyDown(KeyCode.Q) || Input.GetAxis("Mouse ScrollWheel") < 0f) && emptyCounter < isEmpty.Length)
        {
            if (somethingEquipped)
            {
                rightArmObj.transform.GetChild(0).GetComponent<inventoryMan>().putThisInInvent();
            }
            if(currentObject > 0)
            {
                currentObject--;
            }
            else
            {
                currentObject = slots.Length - 1;
            }
            for (int i = 0; i < slots.Length + 1; i++)
                {
                    if (isEmpty[currentObject])
                    {
                        if (currentObject > 0)
                            currentObject--;
                        else
                        {
                            currentObject = slots.Length - 1;
                        }
                    }
                    else
                    {
                        i = slots.Length + 1;
                    }
                }
            
           
            slots[currentObject].GetChild(0).GetComponent<inventoryMan>().takeFromInvent();
        }
        if ((Input.GetKeyDown(KeyCode.E) || Input.GetAxis("Mouse ScrollWheel") > 0f) && emptyCounter < isEmpty.Length)
        {
            if (somethingEquipped)
            {
                rightArmObj.transform.GetChild(0).GetComponent<inventoryMan>().putThisInInvent();
            }
            if (currentObject < (slots.Length - 1))
            {
                currentObject++;
            }
            else
            {
                currentObject = 0;
            }
            for (int i = 0; i < slots.Length + 1; i++)
                {
                    if (isEmpty[currentObject])
                    {
                        if (currentObject < (slots.Length - 1))
                            currentObject++;
                        else
                        {
                            currentObject = 0;
                        }
                    }
                    else
                    {
                        i = slots.Length + 1;
                    }
                }
            
            slots[currentObject].GetChild(0).GetComponent<inventoryMan>().takeFromInvent();
        }

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

        }
        else
        {
            canOpen = true;
        }

        //want to make a real-time grid, child items to Inventory, send them to space, if space is taken check object tag, if dif object move to new space
        //if inventory is full, play inv full sound


    }

    public void openInventory()
    {
        Debug.Log("opening");
        fpc.enabled = false;
        cameraControl.isActive = false;
        Cursor.lockState = CursorLockMode.None;
        inventory.transform.localPosition = inventoryPos;
        cameraControl.transform.LookAt(inventory.transform.position);
        inventoryOpen = true;
        soundBoard.PlayOneShot(bagOpen);

        inventCam.SetActive(true);
        //inventCam.transform.LookAt(inventory.transform.position);
        //add other cam functionaility
    }

    public void closeInventory()
    {
        Debug.Log("closing");
        fpc.enabled = true;
        cameraControl.isActive = true;
        Cursor.lockState = CursorLockMode.Locked;
        inventory.transform.position = new Vector3(1000, 1000, 1000);
        inventoryOpen = false;
        soundBoard.PlayOneShot(bagClose);
        inventCam.SetActive(false);
    }



    public void saveToInventory(Transform objectToSave, bool isSingle)
    {

        if (isSingle)
        {

            int indexToSaveIn = 0;

            for (int i = 0; i < indexToSaveIn + 1; i++)
            {
                //                print(indexToSaveIn);
                if (isEmpty[i])
                {
                    objectToSave.parent = slots[indexToSaveIn];
                    objectToSave.localPosition = Vector3.up * 0.05f;
                    objectToSave.localScale = objectToSave.localScale / 2f;

                    objectToSave.gameObject.layer = 11;

                    isEmpty[indexToSaveIn] = false;
                }
                else
                {
                    indexToSaveIn++;
                }
            }


        }
        else
        {
            int indexToSaveInNew = 0;
            bool saveNew = false;

            for (int i = 0; i < indexToSaveInNew + 1; i++)
            {
                // Debug.Log(slots[i].name);
                if (!isEmpty[i])
                {
                    if (slots[i].GetChild(0).tag == objectToSave.tag && slots[i].GetChild(0).name == objectToSave.name)
                    {
                        objectToSave.parent = slots[indexToSaveInNew];
                        objectToSave.GetComponent<inventoryMan>().slotNumRetake = indexToSaveInNew;
                        objectToSave.localPosition = new Vector3(Random.Range(-0.3f, 0.3f), 0.05f, Random.Range(-0.3f, 0.3f));
                        objectToSave.localScale = objectToSave.localScale / 2f;

                        objectToSave.gameObject.layer = 11;
                    }
                    else
                    {
                        if (indexToSaveInNew < 9)
                        {
                            indexToSaveInNew++;
                        }
                        else
                            saveNew = true;
                    }
                }
                else
                {
                    if (indexToSaveInNew < 8)
                    {
                        indexToSaveInNew++;
                    }
                    else
                        saveNew = true;
                }

                if (saveNew)
                {
                    int indexToSaveIn = 0;

                    for (int j = 0; j < indexToSaveIn + 1; j++)
                    {
                        //                print(indexToSaveIn);
                        if (isEmpty[j])
                        {
                            objectToSave.parent = slots[indexToSaveIn];
                            objectToSave.localPosition = Vector3.up * 0.05f;
                            objectToSave.localScale = objectToSave.localScale / 2f;

                            objectToSave.gameObject.layer = 11;

                            objectToSave.GetComponent<inventoryMan>().slotNumRetake = indexToSaveIn;

                            isEmpty[indexToSaveIn] = false;
                        }
                        else
                        {
                            indexToSaveIn++;
                        }
                    }
                }
            }
        }
    }

    public void takeFromInventory(int slotNumber, bool isSingle, int childIndex, int slotChildCount)
    {

        if (isSingle)
        {
            closeInventory();
            Transform takeOut = slots[slotNumber].GetChild(childIndex);
            //takeOut.parent = this.transform;
            //takeOut.localPosition = new Vector3(0, 0, 1);
            isEmpty[slotNumber] = true;

        }
        else
        {
            closeInventory();
            Transform takeOut = slots[slotNumber].GetChild(childIndex);
            //takeOut.parent = this.transform;
            //takeOut.localPosition = new Vector3(0, 0, 1);
            if (slotChildCount == 1)
                isEmpty[slotNumber] = true;
        }

        somethingEquipped = true;
    }

    bool checkFull()
    {
        for (int i = 0; i < isEmpty.Length; i++)
        {
            if (isEmpty[i])
                return false;
        }
        return true;
    }

    int checkEmpty()
    {
        emptyCount = 0;
        for(int i = 0; i < isEmpty.Length; i++)
        {
            if (isEmpty[i])
            {
                emptyCount++;
            }
        }
        return emptyCount;
    }


    public void usedNowTakeAgain(int slotNumber)
    {
        if (!isEmpty[slotNumber])
        {
            slots[slotNumber].GetChild(0).GetComponent<inventoryMan>().takeFromInvent();
            somethingEquipped = true;
            Debug.Log(slotNumber);
            //fix this
        }

    }


}
