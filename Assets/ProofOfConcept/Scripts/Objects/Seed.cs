using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class Seed : Interactable
{

    public bool plantSeed;
    public AudioClip plantedSeed;

    //which plant does this seed create?
    public GameObject plant;
    GameObject plantClone;

    public float counter; // for planting 'animation'
    public float fallSpeed;

    inventoryMan inventMan;
    Vector3 targetPos;

    TerrainGridSystem tgs;

    //All possible texture references. Can use resources.Load for this stuff. 
    public Texture2D fertileTexture;
    public Texture2D plantedTexture;
    public Texture2D canClickTexture;

    //controls plant Instant y pos
    Vector3 plantSpawnPos;

    public float withinPlantingRange;

    bool textureShowing;

    int currentCellIndex;
    int previousCellIndex;

    public override void Start()
    {
        base.Start();

        //Inventory Manager reference
        inventMan = GetComponent<inventoryMan>();
        inventMan.isSingle = true;

        //TerrainGridSystem Reference
        tgs = TerrainGridSystem.instance;

    }


    void Update()
    {
        //Checks if has been picked up and equipped 
        if (inventMan.underPlayerControl)
        {
            //Sends out raycast
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            //Checks if raycast hits
            if (Physics.Raycast(ray, out hit))
            {
                //Checks if the hit is a ground tile and within Distance for planting
                if (hit.transform.gameObject.tag == "Ground" && Vector3.Distance(_player.transform.position, hit.point) <= withinPlantingRange && !textureShowing)
                {
                    //grabs Cell tile and index
                    Cell fertile = tgs.CellGetAtPosition(hit.point, true);
                    int cellIndex = tgs.CellGetIndex(fertile);
                    currentCellIndex = cellIndex;

                    if (currentCellIndex != previousCellIndex)
                    {
                        previousCellIndex = currentCellIndex;
                    }

                    //checks if cell is fertile 
                    if (tgs.CellGetTag(cellIndex) == 1)
                    {
                        //Sets texture to clickable
                        tgs.CellToggleRegionSurface(cellIndex, true, canClickTexture);

                        //If player clicks, we plant seed and clear up Equip slot
                        if (Input.GetMouseButtonDown(0))
                        {
                            plantSeed = true;
                            targetPos = hit.point;
                            playerControl.isHoldingSeed = false;
                            inventMan.underPlayerControl = false;
                        }

                    }

                    //If it's a new cell, set last cell back to fertileTexture
                    if (tgs.CellGetTag(previousCellIndex) == 1)
                        StartCoroutine(ChangeTexture(currentCellIndex, fertileTexture));
                }

            }

            //This will be true either after a fruit decomposes, or after player plants seed

        }
        if (plantSeed)
        {
            //grabs Cell tile and index
            Cell plantTile = tgs.CellGetAtPosition(targetPos, true);
            int cellIndex = tgs.CellGetIndex(plantTile);

            //checks if cell is Fertile
            if (tgs.CellGetTag(cellIndex) == 1)
            {
                Debug.Log("planter");
                //Centers seed on tile
                transform.position = new Vector3(tgs.CellGetPosition(cellIndex).x, transform.position.y, tgs.CellGetPosition(cellIndex).z);
                //Calls PlantSeed function on selected tile
                PlantSeed(plantTile, cellIndex);

            }
        }
        //always rotate seed in world space
        transform.Rotate(0, 1, 0 * Time.deltaTime);

    }





    public void PlantSeed(Cell tile, int index)
    {
        Debug.Log("planted Seed");
        //unparents from player control   
        transform.SetParent(null);

        //spirals seed downward into the ground
        if (counter > 0) 
        {
            transform.Translate(0, fallSpeed, 0);
            counter -= 1 * Time.deltaTime;
        }
        else
        {
            if(plantClone != null)
                Debug.Log(plantClone.name);

            //This SHOULD be musical and on Clock
            soundBoard.PlayOneShot(plantedSeed);

            //Instantiate Plant and set position
            plantSpawnPos = tgs.CellGetPosition(index);
            plantClone = Instantiate(plant, plantSpawnPos, Quaternion.identity);

            //Set tile tag to planted
            tgs.CellSetTag(tile, 2);
            tgs.CellToggleRegionSurface(tgs.CellGetIndex(tile), true, plantedTexture);

            //Destroy seed
            Destroy(gameObject);
        }
    }

    

    //Sets texture back to normals
    IEnumerator ChangeTexture(int index, Texture2D texture)
    {
        textureShowing = true;
        yield return new WaitForEndOfFrame();
        tgs.CellToggleRegionSurface(index, true, texture);
        textureShowing = false;
    }


}

