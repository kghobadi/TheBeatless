using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantLife : MonoBehaviour {

    bool fruitGrowing;
    int fruitAmount;
    int ageCounter;
    public GameObject sapling, young, adult, old, stump;
    public GameObject fruit, seed;

    private GameObject sun;
    private Sun sunScript;


    void Start () {
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();
        Instantiate(sapling, transform.position, Quaternion.identity);
        ageCounter = 0;
        fruitAmount = 0;
        StartCoroutine(Growth());
		
	}
	
	void Update () {
        switch (ageCounter)
        {
            case 1: //Young
                sapling.SetActive(false); //need this to only affect one instance
                Instantiate(young, transform.position, Quaternion.identity);
                fruitAmount = 3;
                StartCoroutine(Growth());
                break;
            case 2: //Adult
                young.SetActive(false);
                Instantiate(adult, transform.position, Quaternion.identity);
                fruitAmount = 5;
                StartCoroutine(Growth());
                break;
            case 3: // Old
                adult.SetActive(false);
                Instantiate(old, transform.position, Quaternion.identity);
                fruitAmount = 3;
                StartCoroutine(Growth());
                break;
            case 4: // Dead
                old.SetActive(false);
                Instantiate(stump, transform.position, Quaternion.identity);
                SpawnSeeds();
                break;
        }
        //if (fruitGrowing)
        //{

        //}
		
	}

    IEnumerator Growth()
    {
        SpawnFruits();
        yield return new WaitUntil(() => sunScript.dayPassed == true);
        SpawnFruits();
        yield return new WaitForSeconds(1);
        ageCounter += 1;
    }

    public void SpawnFruits()
    {
        for(int i = 0; i < fruitAmount; i++)
        {
            Instantiate(fruit, Random.insideUnitCircle * 5, Quaternion.identity);
        }
    }

    public void SpawnSeeds()
    {
        int randoSeeds = Random.Range(2, 3);
        for (int i = 0; i < randoSeeds; i++)
        {
            Instantiate(fruit, Random.insideUnitCircle * 5, Quaternion.identity);
        }
    }
}
