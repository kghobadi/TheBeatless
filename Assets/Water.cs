using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class Water : MonoBehaviour {

    TerrainGridSystem tgs;

    public Texture2D plantedTexture;
    public Texture2D wateredTexture;

    public float waterDistance;

    GameObject _player;

    GameObject currentTree;

    public AudioSource cameraSource;
    public AudioClip wateringSound;

    private GameObject bed;
    private Bed sleepScript;

    //Sprite symbol; use to change cursor sprite

    void Start () {

        //TerrainGridSystem reference
        tgs = TerrainGridSystem.instance;

        _player = GameObject.FindWithTag("Player");

        bed = GameObject.FindGameObjectWithTag("Bed");
        sleepScript = bed.GetComponent<Bed>();
    }
	
	// Update is called once per frame
	void Update () {
        //Sends out raycast
        if (Input.GetMouseButtonDown(0))
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            //Checks if raycast hits
            if (Physics.Raycast(ray, out hit))
            {
                //Checks if the hit is a ground tile and within Distance for hoeing
                if (hit.transform.gameObject.tag == "sequencer" && Vector3.Distance(_player.transform.position, hit.point) <= waterDistance)
                {
                    //Can add cursor sprite change here

                    currentTree = hit.transform.gameObject;
                    if (!currentTree.GetComponent<NewPlantLife>().hasBeenWateredToday)
                    {
                        currentTree.GetComponent<NewPlantLife>().growthPeriod -= 1;
                        currentTree.GetComponent<NewPlantLife>().hasBeenWateredToday = true;
                        currentTree.GetComponent<NewPlantLife>().hasBeenWatered = true;
                        cameraSource.PlayOneShot(wateringSound);

                        //to change ground texture to water texture
                        Cell tree = tgs.CellGetAtPosition(hit.point, true);
                        int index = currentTree.GetComponent<NewPlantLife>().cellIndex;
                        tgs.CellToggleRegionSurface(index, true, wateredTexture);
                        StartCoroutine(ChangeTexture(index));

                    }

                }
            }
        }
    }

    IEnumerator ChangeTexture(int index)
    {
        yield return new WaitUntil(() => sleepScript.dayPassed == true);
        tgs.CellToggleRegionSurface(index, true, plantedTexture);
    }
}
