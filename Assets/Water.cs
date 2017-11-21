using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class Water : MonoBehaviour
{

    TerrainGridSystem tgs;

    public Texture2D plantedTexture;
    public Texture2D wateredTexture;

    public float waterDistance;


    ParticleSystem waterEffect;


    GameObject _player;

    NewPlantLife currentPlant;

    public AudioSource cameraSource;
    public AudioClip wateringSound;

    private GameObject bed;
    private Bed sleepScript;

    public int particleAmount;

    inventoryMan inventMan;

    SpriteRenderer symbol;

    private Sprite normalSprite;
    private Sprite clickSprite;

    bool cursorChange, changeBack;
    int frameCounter;

    //Sprite symbol; use to change cursor sprite

    void Start()
    {
        frameCounter = 10;
        //TerrainGridSystem reference
        tgs = TerrainGridSystem.instance;

        _player = GameObject.FindWithTag("Player");
        symbol = GameObject.FindGameObjectWithTag("Symbol").GetComponent<SpriteRenderer>(); //searches for InteractSymbol
        bed = GameObject.FindGameObjectWithTag("Bed");
        sleepScript = bed.GetComponent<Bed>();

        waterEffect = GetComponentInChildren<ParticleSystem>();
        waterEffect.Stop();

        inventMan = GetComponent<inventoryMan>();

        //loads Cursor Sprites
        normalSprite = Resources.Load<Sprite>("CursorSprites/crosshair");
        clickSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");
    }

    // Update is called once per frame
    void Update()
    {
        if (changeBack)
        {
            cursorChange = false;
            changeBack = false;
            symbol.sprite = normalSprite;
        }

        if (inventMan.underPlayerControl)
        {
            //Sends out raycast
            if (Input.GetMouseButtonDown(0))
            {
                Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
                RaycastHit hit;

                waterEffect.Emit(particleAmount);

                //Checks if raycast hits
                if (Physics.Raycast(ray, out hit))
                {
                    //Checks if the hit is a ground tile and within Distance for hoeing
                    if (hit.transform.gameObject.tag == "sequencer" && Vector3.Distance(_player.transform.position, hit.point) <= waterDistance)
                    {
                        //Can add cursor sprite change here
                        cursorChange = true;
                        currentPlant = hit.transform.gameObject.GetComponent<NewPlantLife>();
                        if (!currentPlant.hasBeenWateredToday)
                        {
                            currentPlant.hasBeenWateredToday = true;
                            currentPlant.hasBeenWatered = true;
                            cameraSource.PlayOneShot(wateringSound);

                            //to change ground texture to water texture
                            Cell tree = tgs.CellGetAtPosition(hit.transform.position, true);
                            int index = currentPlant.cellIndex;
                            tgs.CellToggleRegionSurface(index, true, wateredTexture);

                        }
                    }
                }
            }
        }
        if (cursorChange)
        {
            symbol.sprite = clickSprite;
            frameCounter--;
            if (frameCounter < 0)
            {
                changeBack = true;
                frameCounter = 10;
            }
        }
    }
}

