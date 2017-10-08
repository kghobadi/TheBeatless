using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Seed : Interactable {
    public bool underPlayerControl;
    public bool plantSeed;
    public AudioClip plantedSeed;

    public GameObject plant;

    public override void Start()
    {
        base.Start();

    }

    public override void handleClickSuccess()
    {
        if (!underPlayerControl && !playerControl.isHoldingAnimal && !playerControl.isHoldingFood && !playerControl.isHoldingSeed)
        {
            base.handleClickSuccess();
            underPlayerControl = true;
            playerControl.isHoldingSeed = true;
            interactable = false;
            FindPlayerArm();
        }
        // 
    }

    void Update()
    {

        if (plantSeed)
        {
            underPlayerControl = false;
            playerControl.isHoldingSeed = false;
            Destroy(gameObject);
            soundBoard.PlayOneShot(plantedSeed);
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
