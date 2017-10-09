using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour {
    
    FirstPersonController playerControl;
    camMouseLook cameraControl;

    GameObject inventory;

    public bool inventoryOpen;
    public bool canOpen;

    void Start () {
        playerControl = GetComponent<FirstPersonController>();
        cameraControl = GetComponentInChildren<camMouseLook>();

        inventory = GameObject.FindGameObjectWithTag("Inventory");

        inventory.SetActive(false);
        inventoryOpen = false;
	}
	

	void Update () {
        if (Input.GetKeyDown(KeyCode.Tab) && canOpen)
        {
            playerControl.enabled = false;
            cameraControl.enabled = false;
            inventory.SetActive(true);
            cameraControl.transform.LookAt(inventory.transform.position);
            inventoryOpen = true;

        }
        if (Input.GetKeyDown(KeyCode.Tab) && !canOpen)
        {
            playerControl.enabled = true ;
            cameraControl.enabled = true ;
            inventory.SetActive(false);
            inventoryOpen = false;
        }

        if (inventoryOpen)
        {
            canOpen = false;
        }
        else
        {
            canOpen = true;
        }
    }
}
