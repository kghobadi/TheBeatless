using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantLife : MonoBehaviour {

    bool fruitGrowing;
    int fruitAmount;
    int ageCounter;
    public GameObject sapling, young, adult, old, stump;
    public Sun sun;
    public GameObject fruit;


	void Start () {
        sapling.SetActive(true);
        young.SetActive(false);
        adult.SetActive(false);
        old.SetActive(false);
        stump.SetActive(false);
        ageCounter = 0;
        StartCoroutine(Growth());
		
	}
	
	void Update () {
        switch (ageCounter)
        {
            case 1: //Young
                sapling.SetActive(false);
                young.SetActive(true);
                fruitAmount = 3;
                SpawnFruits();
                StartCoroutine(Growth());
                break;
            case 2: //Adult
                young.SetActive(false);
                adult.SetActive(true);
                fruitAmount = 5;
                SpawnFruits();
                StartCoroutine(Growth());
                break;
            case 3: // Old
                adult.SetActive(false);
                old.SetActive(true);
                StartCoroutine(Growth());
                break;
            case 4: // Dead
                old.SetActive(false);
                stump.SetActive(true);
                break;
        }
        if (fruitGrowing)
        {

        }
		
	}

    IEnumerator Growth()
    {
        yield return new WaitUntil(() => sun.dayPassed == true);
        yield return new WaitForSeconds(1);
        ageCounter += 1;
    }

    public void SpawnFruits()
    {

    }
}
