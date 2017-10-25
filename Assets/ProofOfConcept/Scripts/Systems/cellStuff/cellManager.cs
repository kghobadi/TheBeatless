using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class cellManager : MonoBehaviour {

    TerrainGridSystem tgs;
    public Vector3 cellCenter;

    void Start()
    {
        tgs = TerrainGridSystem.instance;

        for (int i = 0; i < tgs.cells.Count;i++){
            
        }
	}
	
	// Update is called once per frame
	void Update () {


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
