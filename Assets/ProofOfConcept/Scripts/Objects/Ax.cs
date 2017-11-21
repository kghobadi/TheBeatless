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

    inventoryMan inventMan;
    int minCrop, maxCrop;

    WorldManager worldMan;

    void Start()
    {

        //TerrainGridSystem reference
        tgs = TerrainGridSystem.instance;

        _player = GameObject.FindWithTag("Player");

        inventMan = GetComponent<inventoryMan>();

        worldMan = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();
    }


    void Update()
    {
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
