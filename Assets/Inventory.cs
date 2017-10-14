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

    void Start () {
        playerControl = GetComponent<FirstPersonController>();
        cameraControl = GetComponentInChildren<camMouseLook>();

        inventory = GameObject.FindGameObjectWithTag("Inventory");
        soundBoard = GetComponentInChildren<AudioSource>();

        inventory.SetActive(false);
        inventoryOpen = false;
	}
	

	void Update () {
        if (Input.GetKeyDown(KeyCode.Tab) && canOpen)
        {
            playerControl.enabled = false;
            cameraControl.enabled = false;
            Cursor.lockState = CursorLockMode.None;
            inventory.SetActive(true);
            cameraControl.transform.LookAt(inventory.transform.position);
            inventoryOpen = true;
            soundBoard.PlayOneShot(bagOpen);

        }
        if (Input.GetKeyDown(KeyCode.Tab) && !canOpen)
        {
            playerControl.enabled = true ;
            cameraControl.enabled = true ;
            Cursor.lockState = CursorLockMode.Locked;
            inventory.SetActive(false);
            inventoryOpen = false;
            soundBoard.PlayOneShot(bagClose);
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
}
