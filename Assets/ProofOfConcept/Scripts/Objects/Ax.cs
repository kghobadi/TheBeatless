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

    void Start()
    {

        //TerrainGridSystem reference
        tgs = TerrainGridSystem.instance;

        _player = GameObject.FindWithTag("Player");
    }


    void Update()
    {
        //Checks if has been picked up and equipped 

        //Sends out raycast
        if (Input.GetMouseButtonDown(0))
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            //Checks if raycast hits
            if (Physics.Raycast(ray, out hit))
            {
                //Checks if the hit is a ground tile and within Distance for hoeing
                if (hit.transform.gameObject.tag == "sequencer" && Vector3.Distance(_player.transform.position, hit.point) <= axDistance)
                {
                    currentTree = hit.transform.gameObject;
                    Cell tree = tgs.CellGetAtPosition(hit.point, true);
                    int index = currentTree.GetComponent<PlantLife>().cellIndex;
                    tgs.CellToggleRegionSurface(index, true, groundTexture);
                    tgs.CellSetTag(tree, 0);
                    //play sound
                    //play falling animation
                    Destroy(hit.transform.gameObject);

                }
            }
        }


    }

    
}
