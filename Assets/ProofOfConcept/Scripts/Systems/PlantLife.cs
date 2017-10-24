using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantLife : MonoBehaviour {

    bool fruitGrowing;
    int fruitAmount;
    public int ageCounter;
    public int growthDay;

    public GameObject sapling, young, adult, old, stump;
    private GameObject saplingClone, youngClone, adultClone, oldClone, stumpClone; // can still add or remove from life cycle
    public GameObject fruit;
    GameObject fruitClone;

    private GameObject sun;
    private Sun sunScript;
    bool hasGrown;

    private AudioSource treeSounds;
    public AudioClip growthSound;

    void Awake()
    {
        //grabs Sun ref
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();
    }

    void Start () {
        

        //grabs Audio 
        treeSounds = gameObject.AddComponent<AudioSource>();

        // Clone all prefabs and Instantiate
        saplingClone = Instantiate(sapling, transform.position, Quaternion.identity);
        youngClone = Instantiate(young, transform.position, Quaternion.identity);
        adultClone = Instantiate(adult, transform.position, Quaternion.identity);
        oldClone = Instantiate(old, transform.position, Quaternion.identity);
        stumpClone = Instantiate(stump, transform.position, Quaternion.identity);

        //Set inactive besides ~Sapling~
        youngClone.SetActive(false);
        adultClone.SetActive(false);
        oldClone.SetActive(false);
        stumpClone.SetActive(false);

        //Set age and fruit
        ageCounter = 0;
        fruitAmount = 0;

        StartCoroutine(Growth());
	}
	
	void Update () {
        if (hasGrown)
        {
            switch (ageCounter)
            {
                case 1: //Young
                    hasGrown = false;
                    Destroy(saplingClone);
                    youngClone.SetActive(true);
                    fruitAmount = 3;
                    StartCoroutine(Growth());
                    // treeSounds.Play()  -- loop youth track
                    break;
                case 2: //Adult
                    hasGrown = false;
                    Destroy(youngClone);
                    adultClone.SetActive(true);
                    fruitAmount = 5;
                    StartCoroutine(Growth());
                    // treeSounds.Play()  -- loop adult track
                    break;
                case 3: // Old
                    hasGrown = false;
                    Destroy(adultClone);
                    oldClone.SetActive(true);
                    fruitAmount = 3;
                    StartCoroutine(Growth());
                    // treeSounds.Play()  -- loop old track
                    break;
                case 4: // Dead
                    hasGrown = false;
                    Destroy(oldClone);
                    stumpClone.SetActive(true);
                    // silence after death or leftover ringing in Stump
                    break;
            }
        }
		
	}

    IEnumerator Growth()
    {
        for(int i = 0; i < growthDay; i++)
        {
            Debug.Log(i);
            SpawnFruits();
            if(fruitAmount > 0)
                treeSounds.PlayOneShot(growthSound);
            yield return new WaitUntil(() => sunScript.dayPassed == true);
            yield return new WaitForSeconds(1);
        }
        ageCounter += 1;
        hasGrown = true;
    }

    public void SpawnFruits()
    {
        for (int i = 0; i < fruitAmount; i++)
        {
            Vector3 xyz = Random.insideUnitSphere * 3;
            Vector3 spawnPosition = xyz + transform.position + new Vector3(0, 3, 0);
            fruitClone = Instantiate(fruit, spawnPosition, Quaternion.Euler(0, Random.Range(0, 90f), 0));
            fruitClone.transform.localScale = new Vector3 (0.3f, 0.3f, 0.3f);
        }
        
    }

  
}
