using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class Shovel : Interactable {


    public GameObject fertileGround;
    GameObject fertileGroundClone;
    Vector3 targetPosition;

    inventoryMan inventMan;

    TerrainGridSystem tgs;

    public Texture2D groundTexture;
    public Texture2D canClickTexture;
    public Texture2D fertileTexture;


    // Rework this script so it can be attached to Terrain or larger land mass
    // Plant will spawn at player's mouse position Raycast Screenpoint to World

    public override void Start()
    {
        base.Start();
        inventMan = GetComponent<inventoryMan>();
        inventMan.isSingle = true;
        tgs = TerrainGridSystem.instance;
    }


    void Update()
    {

        //could also attach Interactable to Terrain and only turn it on if shovel is equipped and within distance of water source
        // need some way to put this shit on a grid
        // need a way to unequip

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

                    if (tgs.CellGetTag(cellIndex) == 0)
                    {
                        tgs.CellToggleRegionSurface(cellIndex, true, canClickTexture);
                        if (Input.GetMouseButtonDown(0))
                        {
                            {
                                tgs.CellSetTag(fertile, 1);
                                StartCoroutine(ChangeTexture(cellIndex, fertileTexture));
                            }
                            soundBoard.PlayOneShot(InteractSound);

                        }
                        else
                        {
                            StartCoroutine(ChangeTexture(cellIndex, groundTexture));
                        }
                    }

                   
                }
            }
        }

    }

    IEnumerator ChangeTexture(int index, Texture2D texture)
    {
        yield return new WaitForSeconds(0.3f);
        tgs.CellToggleRegionSurface(index, true, texture);
    }

    
}
