using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Fruit : Interactable {
    public bool feedAnimal;
    public AudioClip animalEats;
    public bool hasFallen;
    public bool onGround;

    public GameObject seed;
    GameObject seedClone;

    public float fullyGrownXScale;
    public float growthMetric;

    Rigidbody rb;
    public int decompositionDay;

    inventoryMan inventMan;

    private GameObject sun;
    private Sun sunScript;




    public override void Start()
    {
        base.Start();

        //grabs Sun ref
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();

        //Makes a seed clone of whichever Plant type player needs
        seedClone = Instantiate(seed, transform.position, Quaternion.identity);
        seedClone.transform.SetParent(gameObject.transform);
        seedClone.SetActive(false);

       

        inventMan = GetComponent<inventoryMan>();
        inventMan.isSingle = true;
        interactable = false;

        rb = GetComponent<Rigidbody>();

    }

    void Update()
    {
   
        if (inventMan.underPlayerControl)
        {
            if (feedAnimal)
            {
                inventMan.underPlayerControl = false;
                playerControl.isHoldingFood = false;

                //NEED TO find a way to set parent to animal, carry it around a while, then poop it out (set active)
                seedClone.SetActive(true);
                seedClone.transform.localPosition = seedClone.transform.localPosition + new Vector3(-0.5f, 0, -0.5f);
                seedClone.transform.SetParent(null);

                Destroy(gameObject);
                soundBoard.PlayOneShot(animalEats);
            }
        }else{
            transform.Rotate(0, 1, 0 * Time.deltaTime);

            if (!onGround)
                FruitGrowth();

            if (hasFallen && !onGround)
            {
                rb.isKinematic = false;
               // transform.position -= new Vector3(0, 10 * Time.deltaTime, 0);
                hasFallen = false;

            }

            if (onGround)
            {
                interactable = true;
            }

        }
    }

    void FruitGrowth()
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


    void OnCollisionEnter(Collision collision)
    {
        rb.isKinematic = true;
        if(collision.gameObject.tag == "Ground")
        {
            onGround = true;

        }

        //if it hit FertileGround, it will decompose and plant itself
        else if(collision.gameObject.tag == "FertileGround")
        {
            onGround = true;

            StartCoroutine(Decompose());
            Debug.Log("collided");
        }
    }

    IEnumerator Decompose()
    {
        for(int i = 0; i < decompositionDay; i++)
        {
            yield return new WaitUntil(() => sunScript.dayPassed == true);
            Debug.Log("kasSucks"+i);
        }

        seedClone.SetActive(true);
        seedClone.transform.SetParent(null); 
        Destroy(gameObject);
        seedClone.GetComponent<Seed>().plantSeed = true;

    }

}
