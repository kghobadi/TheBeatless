using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class setInputRecording : MonoBehaviour {

	public InstrumentObject instrumentObjectScript;
	public InputVCR vcr;
	public Specie specie;


	FirstPersonController playerControl;
    camMouseLook cameraControl;
    diffVisFeedback instrumentControl;
    pitchShift pitchControl;

    bool isRec = false;
    bool canStop;
    
	void Start () {

		playerControl = GetComponent<FirstPersonController>();
        cameraControl = GetComponentInChildren<camMouseLook>();

    }


	void setReferences(){

		instrumentObjectScript = GetComponentInChildren<InstrumentObject>();
		vcr = GetComponentInChildren<InputVCR>();
        specie = GetComponentInChildren<Specie>();
        instrumentControl = GetComponentInChildren<diffVisFeedback>();
        pitchControl = GetComponentInChildren<pitchShift>();
    }
	
	void Update () {


        if (playerControl.isHoldingAnimal)
        {
            setReferences();//make this so it only runs once, as soon as you hold an animal

            Debug.Log(vcr.mode);

            //Press button to enable music and recording 
            //Grab Input VCR and Recording for key presses, so we can loop
            if (instrumentObjectScript.underPlayerControl && vcr.mode != InputVCRMode.Record && canStop == false && Input.GetKeyDown(KeyCode.R))
            {
                // THis will reference an audio file: specie.audioSchema[KeyCode.W];
                playerControl.enabled = false;
                Cursor.lockState = CursorLockMode.None;
                cameraControl.enabled = false;
                print("recording");
                vcr.Record();
                isRec = true;


            }


            // Stops recording, grab recorded frames and save to global storage of species track list
            //
            if (instrumentObjectScript.underPlayerControl && vcr.mode == InputVCRMode.Record && canStop == true && Input.GetKeyDown(KeyCode.R) )
            {

                //		Recording inputSequence = vcr.GetRecording();
                //Output to Species Track list 
                //AnimalTracks.Instance.AddTrackToSpecies(specie.specieName, inputSequence);
               
                playerControl.enabled = true;
                cameraControl.enabled = true;
                Cursor.lockState = CursorLockMode.Locked;
                print("stopped recording");
                isRec = false;


                vcr.Play();
                instrumentObjectScript.dropAnimal = true;

            }
            //if (instrumentObjectScript.underPlayerControl && vcr.mode != InputVCRMode.Record && Input.GetKeyDown(KeyCode.Y))
           // {
                
           // }
           if(isRec == true)
            {
                canStop = true;
            }
           if(isRec == false)
            {
                canStop = false;
            }
        }
	}


	//MUST PUT THE KEYBOARD CONTROLLER ON EACH OBJECT AND THEN 
}
