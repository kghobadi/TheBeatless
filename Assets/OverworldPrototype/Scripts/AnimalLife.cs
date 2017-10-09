using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimalLife : MonoBehaviour {

    bool fruitGrowing;
    int fruitAmount;
    int ageCounter;

    //If we want to instantiate different Models for animals as they grow (like plants)
    public GameObject baby, adult, old, skeleton;
    private GameObject babyClone, adultClone, oldClone, skeletonClone;

    private GameObject sun;
    private Sun sunScript;
    bool hasGrown;

    public bool isBaby;
    public bool isAdult;
    public bool isOld;
    public bool isDead;

    InstrumentObject objectScript;

    void Start () {
        //grabs Sun ref
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();

        // ref for Animal Interactable
        objectScript = GetComponent<InstrumentObject>();

        // Clone all prefabs and Instantiate
        babyClone = Instantiate(baby, transform.position, Quaternion.identity);
        adultClone = Instantiate(adult, transform.position, Quaternion.identity);
        oldClone = Instantiate(old, transform.position, Quaternion.identity);
        skeletonClone = Instantiate(skeleton, transform.position, Quaternion.identity);

        //Set inactive besides ~Baby~
        adultClone.SetActive(false);
        oldClone.SetActive(false);
        skeletonClone.SetActive(false);

        //Set age 
        ageCounter = 0;
        isBaby = true;

        StartCoroutine(Growth());
	}
	
	void Update () {
        if (hasGrown)
        {
            switch (ageCounter)
            {
                case 1: //Adult
                    hasGrown = false;
                    Destroy(babyClone);
                    adultClone.SetActive(true);
                    isAdult = true;
                    StartCoroutine(Growth());
                    break;
                case 2: // Old
                    hasGrown = false;
                    Destroy(adultClone);
                    oldClone.SetActive(true);
                    isOld = true;
                    StartCoroutine(Growth());
                    break;
                case 3: // Dead
                    hasGrown = false;
                    Destroy(oldClone);
                    skeletonClone.SetActive(true);
                    isDead = true;
                    break;
            }
        }
		
	}

    IEnumerator Growth()
    {
        yield return new WaitUntil(() => sunScript.dayPassed == true);
        yield return new WaitForSeconds(1);
        //animalSounds.PlayOneShot(growthSound); need a ref to an audioSource for the animal
        if (objectScript.hasBeenFed)
        {
            ageCounter += 1;
            hasGrown = true;
        }
        else
        {
            StartCoroutine(Growth()); //hopefully this works
        }
    }
    
}
