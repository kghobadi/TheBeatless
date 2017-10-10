using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Fruit : Interactable {
    public bool underPlayerControl;
    public bool feedAnimal;
    public AudioClip animalEats;

    public GameObject seed;
    GameObject seedClone;

    public override void Start()
    {
        base.Start();

        //Makes a seed clone of whichever Plant type player needs
        seedClone = Instantiate(seed, transform.position, Quaternion.identity);
        seedClone.transform.SetParent(gameObject.transform);
        seedClone.SetActive(false);
    }

    public override void handleClickSuccess()
    {
        if (!underPlayerControl && !playerControl.isHoldingAnimal)
        {
            base.handleClickSuccess();
            underPlayerControl = true;
            playerControl.isHoldingFood = true;
            interactable = false;
            FindPlayerArm();
        }
        // 
    }

    void Update()
    {
        transform.Rotate(0, 1, 0 * Time.deltaTime);

        if (feedAnimal)
        {
            underPlayerControl = false;
            playerControl.isHoldingFood = false;
            seedClone.SetActive(true);
            seedClone.transform.localPosition = seedClone.transform.localPosition + new Vector3(-0.5f, 0, -0.5f);
            seedClone.transform.SetParent(null);
            Destroy(gameObject);
            soundBoard.PlayOneShot(animalEats);
        }

    }

    void FindPlayerArm()
    {
        transform.SetParent(_player.transform);

        Vector3 armPosition = new Vector3(0.25f, 0f, 1.5f);

        transform.localPosition = armPosition;

        // Can show this with tiny animation and Arm movement

    }

    
}
