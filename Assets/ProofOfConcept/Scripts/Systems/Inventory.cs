using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour
{

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

    public bool isFull;

    public GameObject inventCam;

    //public bool usedNowTakeAgain;

    void Start()
    {
        playerControl = GetComponent<FirstPersonController>();
        cameraControl = GetComponentInChildren<camMouseLook>();

        inventory = GameObject.FindGameObjectWithTag("Inventory");
        soundBoard = GetComponentInChildren<AudioSource>();

        inventory.SetActive(false);
        inventoryOpen = false;
        isEmpty = new bool[slots.Length];
        for (int i = 0; i < isEmpty.Length; i++)
        {
            isEmpty[i] = true;
        }


    }


    void Update()
    {

        isFull = checkFull();

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
        playerControl.enabled = false;
        cameraControl.enabled = false;
        Cursor.lockState = CursorLockMode.None;
        inventory.SetActive(true);
        cameraControl.transform.LookAt(inventory.transform.position);
        inventoryOpen = true;
        soundBoard.PlayOneShot(bagOpen);

        inventCam.SetActive(true);
        //add other cam functionaility
    }

    public void closeInventory()
    {
        playerControl.enabled = true;
        cameraControl.enabled = true;
        //Cursor.lockState = CursorLockMode.Locked;
        inventory.SetActive(false);
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


    public void usedNowTakeAgain(int slotNumber)
    {
        if (!isEmpty[slotNumber])
        {
            slots[slotNumber].GetChild(0).GetComponent<inventoryMan>().takeFromInvent();
            Debug.Log(slotNumber);
            //fix this
        }

    }

}
