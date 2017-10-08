using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Fruit : Interactable {
    public bool underPlayerControl;
    public bool feedAnimal;
    public AudioClip animalEats;

    public override void Start()
    {
        base.Start();

    }

    public override void handleClickSuccess()
    {
        if (!underPlayerControl && !playerControl.isHoldingAnimal)
        {
            base.handleClickSuccess();
            // move position to player's arm 
            underPlayerControl = true;
            playerControl.isHoldingFood = true;
            interactable = false;
            FindPlayerArm();
        }
        // 
    }

    void Update()
    {

        if (feedAnimal)
        {
            underPlayerControl = false;
            playerControl.isHoldingFood = false;
            Destroy(gameObject);
            soundBoard.PlayOneShot(animalEats);
        }

    }

    void FindPlayerArm()
    {
        transform.SetParent(_player.transform);

        Vector3 armPosition = new Vector3(0.5f, 0f, 1f);

        transform.localPosition = armPosition;

        // Can show this with tiny animation and Arm movement

    }
}
