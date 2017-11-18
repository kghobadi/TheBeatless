using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TGS;

public class WaterParticles : MonoBehaviour {
    TerrainGridSystem tgs;

    ParticleSystem waterEffect;
    
    public Texture2D wateredTexture;

    NewPlantLife currentPlant;

    public AudioSource cameraSource;
    public AudioClip wateringSound;

    private GameObject bed;
    private Bed sleepScript;

    GameObject toolManager;
    ToolManager toolMan;

    void Start () {

        //TerrainGridSystem reference
        tgs = TerrainGridSystem.instance;

        toolManager = GameObject.FindGameObjectWithTag("ToolManager");
        toolMan = toolManager.GetComponent<ToolManager>();

        bed = GameObject.FindGameObjectWithTag("Bed");
        sleepScript = bed.GetComponent<Bed>();
        waterEffect = GetComponent<ParticleSystem>();

        waterEffect.Stop();
    }
	
	// Update is called once per frame
	void Update () {
        if(toolMan.water != null)
        {
            if (Input.GetMouseButton(0))
            {
                //play particle system
                waterEffect.Play();
            }
            else
            {
                waterEffect.Stop();
            }
        }
        
	}

    void OnParticleCollision(GameObject hit)
    {
        if(hit.tag == "sequencer")
        {

            currentPlant = hit.GetComponent<NewPlantLife>();
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
