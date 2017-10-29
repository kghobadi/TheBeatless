using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class Seed : Interactable
{

    public bool plantSeed;
    public AudioClip plantedSeed;

    public GameObject plant;
    GameObject plantClone;
    public float counter; // for planting 'animation'

    inventoryMan inventMan;
    Vector3 targetPos;

    TerrainGridSystem tgs;
    public Texture2D fertileTexture;
    public Texture2D plantedTexture;
    public Texture2D canClickTexture;

    public override void Start()
    {
        base.Start();
        //counter = 2.5f;
        inventMan = GetComponent<inventoryMan>();
        inventMan.isSingle = false;

        //spawns plant and sets false
        plantClone = Instantiate(plant, transform.position, Quaternion.identity);
        plantClone.transform.SetParent(gameObject.transform);
        plantClone.SetActive(false);

        tgs = TerrainGridSystem.instance;

    }


    void Update()
    {

        if (inventMan.underPlayerControl)
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;
            if (Physics.Raycast(ray, out hit))
            {
                if (hit.transform.gameObject.tag == "Ground" && Vector3.Distance(_player.transform.position, hit.point) <= withinDistanceActive)
                {
                    Cell fertile = tgs.CellGetAtPosition(hit.point, true);
                    int cellIndex = tgs.CellGetIndex(fertile);
                    if (tgs.CellGetTag(cellIndex) == 1)
                    {
                        tgs.CellToggleRegionSurface(cellIndex, true, canClickTexture);
                        if (Input.GetMouseButtonDown(0))
                        {
                            plantSeed = true;
                            targetPos = hit.point;
                            playerControl.isHoldingSeed = false;
                            inventMan.underPlayerControl = false;
                        }
                        else
                        {
                            StartCoroutine(ChangeTexture(cellIndex, fertileTexture));
                        }
                    }
                }
            }

            //else if(!inventMan.underPlayerControl && plantSeed)
            //{
            //    PlantSeed(pla);
            //}
        }
        if (plantSeed)
        {
            //targetPosition = hit.point;
            Cell plantTile = tgs.CellGetAtPosition(targetPos, true);
            int cellIndex = tgs.CellGetIndex(plantTile);
            if (tgs.CellGetTag(cellIndex) == 1)
            {
                transform.position = new Vector3(tgs.CellGetPosition(cellIndex).x, transform.position.y, tgs.CellGetPosition(cellIndex).z);

                PlantSeed(plantTile);

            }



        }
        transform.Rotate(0, 1, 0 * Time.deltaTime);

    }


    public void PlantSeed(Cell tile)
    {

        transform.SetParent(null);
        if (counter > 0) //spirals seed downward into the ground
        {
            transform.Translate(0, -0.01f, 0);
            counter -= 1 * Time.deltaTime;
        }
        else
        {
            if (plantClone != null)
                Debug.Log(plantClone.name);
            //awaken plant & destroy seed
            soundBoard.PlayOneShot(plantedSeed);
            plantClone.SetActive(true);
            plantClone.transform.localPosition = plantClone.transform.localPosition + new Vector3(0, 2.5f, 0);
            plantClone.transform.SetParent(null);
            tgs.CellSetTag(tile, 2);
            tgs.CellToggleRegionSurface(tgs.CellGetIndex(tile), true, plantedTexture);
            Destroy(gameObject);
        }
    }

    IEnumerator ChangeTexture(int index, Texture2D texture)
    {
        yield return new WaitForSeconds(0.3f);
        tgs.CellToggleRegionSurface(index, true, texture);
    }


}

