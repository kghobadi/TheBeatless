using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class Ax : MonoBehaviour
{
    TerrainGridSystem tgs;

    public Texture2D groundTexture;

    public float axDistance;

    GameObject _player;

    GameObject currentTree;

    public GameObject crop;
    GameObject cropClone;

    public AudioSource cameraSource;
    public AudioClip cropYield;

    SpriteRenderer symbol;

    private Sprite normalSprite;
    private Sprite clickSprite;

    inventoryMan inventMan;
    int minCrop, maxCrop;

    WorldManager worldMan;

    bool cursorChange, changeBack;
    int frameCounter;

    void Start()
    {
        frameCounter = 10;
        //TerrainGridSystem reference
        tgs = TerrainGridSystem.instance;

        _player = GameObject.FindWithTag("Player");
        symbol = GameObject.FindGameObjectWithTag("Symbol").GetComponent<SpriteRenderer>(); //searches for InteractSymbol
        inventMan = GetComponent<inventoryMan>();

        worldMan = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();

        //loads Cursor Sprites
        normalSprite = Resources.Load<Sprite>("CursorSprites/crosshair");
        clickSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");
    }


    void Update()
    {
        if (changeBack)
        {
            cursorChange = false;
            changeBack = false;
            symbol.sprite = normalSprite;
        }
        //Checks if has been picked up and equipped 
        if (inventMan.underPlayerControl)
        {
            //Sends out raycast
            if (Input.GetMouseButton(0))
            {
                Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
                RaycastHit hit;

                //start particle system
                //sphere cast

                //Checks if raycast hits
                if (Physics.Raycast(ray, out hit))
                {
                    //Checks if the hit is a ground tile and within Distance for hoeing
                    if (hit.transform.gameObject.tag == "sequencer" && Vector3.Distance(_player.transform.position, hit.point) <= axDistance)
                    {
                        cursorChange = true;
                        currentTree = hit.transform.gameObject;
                        Cell tree = tgs.CellGetAtPosition(hit.point, true);
                        int index = currentTree.GetComponent<NewPlantLife>().cellIndex;
                        tgs.CellToggleRegionSurface(index, true, groundTexture);
                        tgs.CellSetTag(tree, 0);
                        //play sound
                        //play falling animation
                        
                        if(currentTree.GetComponent<NewPlantLife>().ageCounter == 1)
                        {
                            SpawnCrops(1, 3);
                        }
                        else if (currentTree.GetComponent<NewPlantLife>().ageCounter == 2)
                        {
                            SpawnCrops(3, 6);
                            
                        }
                        else if (currentTree.GetComponent<NewPlantLife>().ageCounter == 3)
                        {
                            SpawnCrops(5, 8);

                        }
                       
                        cameraSource.PlayOneShot(cropYield);
                        Destroy(hit.transform.gameObject);
                    }
                }
            }


        }

        if (cursorChange)
        {
            symbol.sprite = clickSprite;
            frameCounter--;
            if(frameCounter < 0)
            {
                changeBack = true;
                frameCounter = 10;
            }
        }
       

    }

    void SpawnCrops(int min, int max)
    {
        int randoCrops = Random.Range(min, max);
        int randomRotation = Random.Range(0, 360);
        for (int i = 0; i < randoCrops; i++)
        {
            Vector3 xyz = (Vector3)Random.insideUnitSphere * 1 + Vector3.up;
            Vector3 spawnPosition = xyz + currentTree.transform.position;
            cropClone = Instantiate(crop, spawnPosition, Quaternion.Euler(0, randomRotation, 0));
        }
    }
}
