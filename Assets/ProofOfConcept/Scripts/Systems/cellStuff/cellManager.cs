using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class cellManager : MonoBehaviour
{

    TerrainGridSystem tgs;
    public Vector3 cellCenter;

    public Texture2D groundTexture, fertileTexture, plantedTexture;
    public bool filledAllTextures;

    void Start()
    {
        tgs = TerrainGridSystem.instance;

        for (int i = 0; i < tgs.cells.Count; i++)
        {
            if (tgs.CellGetTag(i) == 0)
                tgs.CellToggleRegionSurface(i, true, groundTexture);
            //if (tgs.CellGetTag(i) == 1)
            //    tgs.CellToggleRegionSurface(i, true, fertileTexture);
            //if (tgs.CellGetTag(i) == 2)
            //tgs.CellToggleRegionSurface(i, true, plantedTexture);

            //if (tgs.CellGetTag(i) == 5)
            //tgs.CellSetCanCross(i, false);
        }
    }

    // Update is called once per frame
    void Update()
    {


        //if (Input.GetMouseButton(0))
        //{
        //   // Debug.Log(tgs.cellHighlighted);
        //    Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        //    RaycastHit hit;

        //    if (Physics.Raycast(ray, out hit))
        //    {
        //        if (hit.transform.gameObject.tag == "Ground")
        //        {
        //            Cell fertile = tgs.CellGetAtPosition(hit.point, true);
        //            Debug.Log(fertile.row);
        //        }
        //    }
        //}
    }
}
