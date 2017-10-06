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
        StartCoroutine(Growth());
		
	}
	
	void Update () {
        switch (ageCounter)
        {
            case 1: //Young
                Destroy(sapling);
                Instantiate(young, transform.position, Quaternion.identity);
                fruitAmount = 3;
                SpawnFruits();
                StartCoroutine(Growth());
                break;
            case 2: //Adult
                Destroy(young);
                Instantiate(adult, transform.position, Quaternion.identity);
                fruitAmount = 5;
                SpawnFruits();
                StartCoroutine(Growth());
                break;
            case 3: // Old
                Destroy(adult);
                Instantiate(old, transform.position, Quaternion.identity);
                fruitAmount = 3;
                SpawnFruits();
                StartCoroutine(Growth());
                break;
            case 4: // Dead
                Destroy(old);
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
        yield return new WaitUntil(() => sunScript.dayPassed == true);
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
