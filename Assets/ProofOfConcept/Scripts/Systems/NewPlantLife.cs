using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;
public class NewPlantLife : MonoBehaviour
{
    public bool plantedInEditor;
    //public Texture2D plantedTexture;

    //bool fruitGrowing;
    //public int fruitAmount;
    public int ageCounter;
    public int growthPeriod;

    public bool hasBeenWatered;
    public bool hasBeenWateredToday;
    public int extraLifeMax;
    int extraLifeCounter;

    AudioHelm.Sequencer seq;

    //playSequence playSeq;

    public GameObject sapling, young, adult, old, stump;
    private GameObject saplingClone, youngClone, adultClone, oldClone, stumpClone; // can still add or remove from life cycle
    private Transform currentTree;
    //public GameObject fruit;
    //GameObject fruitClone;
    private GameObject bed;
    private Bed sleepScript;
    bool hasGrown;
    private AudioSource treeSounds;
    //public AudioClip growthSound;
	newSequencePlay playAud;
    //public float fruitYpos;
    int randomRotation;
    TerrainGridSystem tgs;
    Cell groundTile;
    public int cellIndex;
    public List<Cell> neighbors = new List<Cell>();
    public List<int> neighborIndexes = new List<int>();
    public Texture2D growingTexture;
    public Texture2D groundTexture;

    public Vector3[] neighbourPos;
    List<AudioHelm.Note> note;
    AudioHelm.Note newNote;

    public GameObject crop;
    GameObject cropClone;

    void Awake()
    {
        seq = GetComponent<AudioHelm.Sequencer>();
		playAud = GetComponent<newSequencePlay>();
        //grabs Sun ref
        neighbourPos = new Vector3[6];
        bed = GameObject.FindGameObjectWithTag("Bed");
        sleepScript = bed.GetComponent<Bed>();
    }
    void Start()
    {
       // playAud = GetComponent<playSequence>();
        //grabs Audio 
        treeSounds = gameObject.AddComponent<AudioSource>();
        //TerrainGridSystem ref
        tgs = TerrainGridSystem.instance;
        randomRotation = 60 * Random.Range(0, 6);
        // Clone Sapling prefabs and Instantiate
        groundTile = tgs.CellGetAtPosition(transform.position, true);
        //transform.SetParent ();
        cellIndex = tgs.CellGetIndex(groundTile);
        neighbors = tgs.CellGetNeighbours(groundTile);
        tgs.CellSetCanCross(cellIndex, false);
        //fills up neighborIndexes with the proper cell indexes
        for (int i = 0; i < neighbors.Count; i++)
        {
            int index = tgs.CellGetIndex(neighbors[i]);
            neighborIndexes.Add(index);
            neighbourPos[i] = tgs.CellGetPosition(index);
            //this gives you neighbor cell position
            //can be used to see which cell you’re being given
            //raycast to this position to get the plant collider and get the sequencer
            if (tgs.CellGetTag(index) == 1)
            {
                //this cell has a tree planted, but don’t run this in start
                //send to an array of “plants nearby”

                //for any rule make a bool in plantlife for “isFollowingRule” to see if neighbours are occupied or following a rule already
                //are two adjacent cells in the index occupied that’s a triad
                //if all cells are occupied that’s an arp, arp beats triad
            }
        }


        if (plantedInEditor)
        {
            ageCounter -= 1;
            transform.position = tgs.CellGetPosition(cellIndex);
            tgs.CellSetTag(cellIndex, 1);
            tgs.CellToggleRegionSurface(cellIndex, true, growingTexture);
        }
        else
        {

            //Set age and fruit
            ageCounter = 0;
            //fruitAmount = 0;
            growthPeriod = 1;
        }
        StartCoroutine(Growth());
    }

    //	note = seq.GetAllNoteOnsInRange (0, 96);

    //	newNote = note [0];
    void Update()
    {
        if (hasGrown)
        {
            switch (ageCounter)
            {
                case 1: //Sapling
                    hasGrown = false;
                    playAud.changedSequence = false;
                    tgs.CellToggleRegionSurface(cellIndex, true, growingTexture);
                    saplingClone = Instantiate(sapling, transform.position, Quaternion.Euler(0, randomRotation, 0), transform);
                    currentTree = saplingClone.transform;
                    growthPeriod = 4;
                    StartCoroutine(Growth());
                    break;
                /*  case 1: //Young
                      hasGrown = false;
                      playAud.clipsSwitched = false;
                      youngClone = Instantiate(young, transform.position, Quaternion.Euler(0, randomRotation, 0));
                      Destroy(saplingClone);
                      currentTree = youngClone.transform;
                      fruitAmount = Random.Range(0, 2);
                      growthDay = Random.Range(3, 5);
                      StartCoroutine(Growth());
                      break; */

                case 2: //Adult
                    hasGrown = false;
                    playAud.changedSequence = false;
                    Destroy(saplingClone);
                    adultClone = Instantiate(adult, transform.position, Quaternion.Euler(0, randomRotation, 0), transform);
                    currentTree = adultClone.transform;
                    //fruitAmount = Random.Range(0, 2);
                    growthPeriod = 10;
                    StartCoroutine(Growth());
                    break;
                case 3: // Old
                    hasGrown = false;
                   playAud.changedSequence = false;
                    Destroy(adultClone);
                    oldClone = Instantiate(old, transform.position, Quaternion.Euler(0, randomRotation, 0), transform);
                    currentTree = oldClone.transform;
                    //fruitAmount = Random.Range(0, 2);
                    growthPeriod = 6;
                    StartCoroutine(Growth());
                    break;
                case 4: // Dead
                    hasGrown = false;
                    playAud.changedSequence = false;
                    Destroy(oldClone);
                    currentTree = null;
                    //Takes current cell and sets it back to normal Ground for tree death

                    tgs.CellSetTag(groundTile, 0);
                    tgs.CellToggleRegionSurface(cellIndex, true, groundTexture);
                    tgs.CellSetCanCross(cellIndex, true);
                    //Death
                    SpawnCrops(3, 6);
                    Destroy(gameObject);
                    //stumpClone = Instantiate(stump, transform.position, Quaternion.Euler(0, randomRotation, 0));
                    // silence after death or leftover ringing in Stump
                    //THIS IS WHERE I SHOULD INCORPORATE POSSIBILITY OF ANCIENT
                    break;
            }
        }
        //		seq.OnNoteOn (newNote);
        //	currentTree.localScale = Vector3.Lerp (new Vector3(1.2f, 1.2f, 1.2f), new Vector3(1.4f, 1.4f, 1.4f), Mathf.PingPong(Time.time, 1));
        //} else {
        //	currentTree.localScale = Vector3.Lerp (currentTree.localScale, new Vector3 (1f, 1f, 1f), Time.deltaTime);

        //}
        //}
    }

    IEnumerator Growth()
    {
        //for loop waits a number of days 
        for (int i = 0; i < growthPeriod; i++)
        {
            yield return new WaitUntil(() => sleepScript.dayPassed == true); //Can be changed so that it is not real time  
            if (hasBeenWateredToday && ageCounter < 2)
            {
                growthPeriod -= 1;
                hasBeenWateredToday = false; //if a day has passed, must be watered again
            }
            else if(hasBeenWateredToday && ageCounter >= 2 && extraLifeCounter < extraLifeMax)
            {
                growthPeriod += 1;
                extraLifeCounter += 1;
                hasBeenWateredToday = false;
            }

            tgs.CellToggleRegionSurface(cellIndex, true, growingTexture);
            Debug.Log(growthPeriod);
        }
        //checks if hasBeenWatered, otherwise keeps growing in same Age
        if (hasBeenWatered)
        {
            ageCounter += 1;
            randomRotation = 60 * Random.Range(0, 6);
            hasGrown = true;
            hasBeenWatered = false;
            hasBeenWateredToday = false;
        }
        else
        {
            hasBeenWateredToday = false;
            StartCoroutine(Growth());
            //can add death state here and counter for Non-Watered growth periods. 
        }
    }

    void SpawnCrops(int min, int max)
    {
        int randoCrops = Random.Range(min, max);
        int randomRotation = Random.Range(0, 360);
        for (int i = 0; i < randoCrops; i++)
        {
            Vector3 xyz = (Vector3)Random.insideUnitSphere * 1 + Vector3.up;
            Vector3 spawnPosition = xyz + transform.position;
            cropClone = Instantiate(crop, spawnPosition, Quaternion.Euler(0, randomRotation, 0));
        }
    }



}
