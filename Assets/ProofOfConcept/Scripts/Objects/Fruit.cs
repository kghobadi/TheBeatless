using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

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
    public int decompositionDaysMin;
    public int decompositionDaysMax;
    int decompositionDay;

    inventoryMan inventMan;

    private GameObject sun;
    private Sun sunScript;

    TerrainGridSystem tgs;


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

        //randomizes fullyGrown
        float randomAdd = Random.Range(-0.1f, 0.1f);
        fullyGrownXScale += randomAdd;

        //Random decompDay
        decompositionDay = Random.Range(decompositionDaysMin, decompositionDaysMax);

        inventMan = GetComponent<inventoryMan>();
        inventMan.isSingle = true;
        interactable = false;

        rb = GetComponent<Rigidbody>();
        rb.isKinematic = true;

        tgs = TerrainGridSystem.instance;

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

            if (!onGround && !hasFallen)
                FruitGrowth();

            if (hasFallen && !onGround)
            {
                rb.isKinematic = false;
               // transform.position -= new Vector3(0, 10 * Time.deltaTime, 0);

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
                transform.localScale *= (growthMetric);
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
            Vector3 collisionPoint = collision.contacts[0].point;
            Cell groundTile = tgs.CellGetAtPosition(collisionPoint,true);
            int cellIndex = tgs.CellGetIndex(groundTile);
            StartCoroutine(Decompose(groundTile, cellIndex, tgs.CellGetTag(cellIndex)));
            

        }

       
    }

    IEnumerator Decompose(Cell newTile, int index, int tagIndex)
    {
        for(int i = 0; i < decompositionDay; i++)
        {
            yield return new WaitUntil(() => sunScript.dayPassed == true);

        }
        if (tagIndex == 1)
        {
            seedClone.SetActive(true);
            seedClone.transform.SetParent(null);
            seedClone.transform.position = new Vector3(tgs.CellGetPosition(index).x, transform.position.y, tgs.CellGetPosition(index).z);
            yield return new WaitForSeconds(0.5f);
            seedClone.GetComponent<Seed>().counter = 0;
            seedClone.GetComponent<Seed>().PlantSeed(newTile);
            Destroy(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }

    }

}
