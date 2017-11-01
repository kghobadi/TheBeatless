using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class PlantLife : MonoBehaviour {

    bool fruitGrowing;
    int fruitAmount;
    public int ageCounter;
    int growthDay;

    public GameObject sapling, young, adult, old, stump;
    private GameObject saplingClone, youngClone, adultClone, oldClone, stumpClone; // can still add or remove from life cycle
    public GameObject fruit;
    GameObject fruitClone;

    private GameObject sun;
    private Sun sunScript;
    bool hasGrown;

    private AudioSource treeSounds;
    public AudioClip growthSound;
    playAudio1 playAud;

    public float fruitYpos;
    int randomRotation;

    TerrainGridSystem tgs;
    Cell groundTile;
    int cellIndex;

    public List<Cell> neighbors = new List<Cell>();
    public List<int> neighborIndexes = new List<int>();

    public Texture2D growingTexture;
    public Texture2D groundTexture;

    void Awake()
    {
        //grabs Sun ref
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();
    }

    void Start () {

        playAud = GetComponent<playAudio1>();

        //grabs Audio 
        treeSounds = gameObject.AddComponent<AudioSource>();

        //TerrainGridSystem ref
        tgs = TerrainGridSystem.instance;

        randomRotation = 60 * Random.Range(0, 6);

        // Clone Sapling prefabs and Instantiate
        groundTile = tgs.CellGetAtPosition(transform.position, true);
        cellIndex = tgs.CellGetIndex(groundTile);
        neighbors = tgs.CellGetNeighbours(groundTile);

        //fills up neighborIndexes with the proper cell indexes
        for(int i = 0; i < neighbors.Count; i++)
        {
            int index = tgs.CellGetIndex(neighbors[i]);
            neighborIndexes.Add(index);
        }

        //Set age and fruit
        ageCounter = -1;
        fruitAmount = 0;
        growthDay = 1;


        StartCoroutine(Growth());
	}
	
	void Update () {
        if (hasGrown)
        {
            switch (ageCounter)
            {
                case 0: //Sapling
                    hasGrown = false;
                    playAud.clipsSwitched = false;
                    tgs.CellToggleRegionSurface(cellIndex, true, growingTexture);
                    saplingClone = Instantiate(sapling, transform.position, Quaternion.Euler(0, randomRotation, 0));
                    growthDay = Random.Range(2, 4); 
                    StartCoroutine(Growth());
                    break;
                case 1: //Young
                    hasGrown = false;
                    playAud.clipsSwitched = false;
                    Destroy(saplingClone);
                    youngClone = Instantiate(young, transform.position, Quaternion.Euler(0, randomRotation, 0));
                    fruitAmount = Random.Range(0, 2);
                    growthDay = Random.Range(3, 5);
                    StartCoroutine(Growth());
                    break;
                case 2: //Adult
                    hasGrown = false;
                    playAud.clipsSwitched = false;
                    Destroy(youngClone);
                    adultClone = Instantiate(adult, transform.position, Quaternion.Euler(0, randomRotation, 0));
                    fruitAmount = Random.Range(0, 4);
                    growthDay = Random.Range(5, 10);
                    StartCoroutine(Growth());
                    break;
                case 3: // Old
                    hasGrown = false;
                    playAud.clipsSwitched = false;
                    Destroy(adultClone);
                    oldClone = Instantiate(old, transform.position, Quaternion.Euler(0, randomRotation, 0));
                    fruitAmount = Random.Range(0, 2);
                    growthDay = Random.Range(3, 10);
                    StartCoroutine(Growth());
                    break;
                case 4: // Dead
                    hasGrown = false;
                    playAud.clipsSwitched = false;
                    Destroy(oldClone);

                    //Takes current cell and sets it back to normal Ground for tree death
                 
                    tgs.CellSetTag(groundTile, 0);
                    tgs.CellToggleRegionSurface(cellIndex, true, groundTexture);

                    //Death
                    Destroy(gameObject);
                    //stumpClone = Instantiate(stump, transform.position, Quaternion.Euler(0, randomRotation, 0));
                    // silence after death or leftover ringing in Stump
                    //THIS IS WHERE I SHOULD INCORPORATE POSSIBILITY OF ANCIENT
                    break;
            }
        }
		
	}

    IEnumerator Growth()
    {
        //for loop waits a number of days 
        for(int i = 0; i < growthDay; i++)
        {
            SpawnFruits();
            if(fruitAmount > 0)
                treeSounds.PlayOneShot(growthSound); //THIS NEEDS TO BE MUSICAL AND ON CLOCK
            yield return new WaitUntil(() => sunScript.dayPassed == true); //Can be changed so that it is not real time
            yield return new WaitForSeconds(1);
        }
        ageCounter += 1;
        randomRotation = 60 * Random.Range(0, 6);
        hasGrown = true;
    }

    public void SpawnFruits()
    {
        for (int i = 0; i < fruitAmount; i += Random.Range(1,2))
        {
            //fruit starting pos and Instantiate
            Vector3 xyz = Random.insideUnitSphere * 1;
            Vector3 spawnPosition = xyz + tgs.CellGetPosition(neighborIndexes[i]) + new Vector3(0, fruitYpos, 0);
            fruitClone = Instantiate(fruit, spawnPosition, Quaternion.Euler(0, Random.Range(0, 90f), 0));

            //random starting scale for fruit
            float randomStartScale = Random.Range(0.1f, 0.3f);
            fruitClone.transform.localScale = new Vector3 (randomStartScale, randomStartScale, randomStartScale);
        }
        
    }

  
}
