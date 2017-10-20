using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Fruit : Interactable {
    public bool underPlayerControl;
    public bool feedAnimal;
    public AudioClip animalEats;
    public bool hasFallen;
    public bool onGround;

    public GameObject seed;
    GameObject seedClone;

    public float fullyGrownXScale;
    public float growthMetric;

    Rigidbody rbody;

    //need architecture for different seed types -- Plant Species?

    public override void Start()
    {
        base.Start();

        //Makes a seed clone of whichever Plant type player needs
        seedClone = Instantiate(seed, transform.position, Quaternion.identity);
        seedClone.transform.SetParent(gameObject.transform);
        seedClone.SetActive(false);

        rbody.GetComponent<Rigidbody>();
        rbody.isKinematic = true;

    }

    public override void handleClickSuccess()
    {
        if (!underPlayerControl && hasFallen)
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

        if(!onGround)
            FruitGrowth();

        if (hasFallen && !onGround)
        {
            rbody.isKinematic = false;
            hasFallen = false;
            
        }

        if (feedAnimal && onGround)
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

    void FruitGrowth()
    {
        if (!hasFallen)
        {
            if (transform.localScale.x < fullyGrownXScale)
            {
                transform.localScale *= growthMetric;
            }
            else if (transform.localScale.x > fullyGrownXScale)
            {
                hasFallen = true;
            }
        }
    }

    void FindPlayerArm()
    {
        transform.SetParent(_player.transform);

        Vector3 armPosition = new Vector3(0.25f, 0f, 1.5f);

        transform.localPosition = armPosition;

        // Can show this with tiny animation and Arm movement

    }

    void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.tag == "Ground")
        {
            onGround = true;
            Destroy(rbody);
        }
    }

}
