using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class setInputRecording : MonoBehaviour {

	public InstrumentObject instrumentObjectScript;
	public InputVCR vcr;
	public Specie specie;
	public Recording rec;

	FirstPersonController playerControl;

	// Use this for initialization
	void Start () {

		playerControl = GetComponent<FirstPersonController>();
	}


	void setReferences(){

		instrumentObjectScript = GetComponentInChildren<InstrumentObject>();
		vcr = GetComponentInChildren<InputVCR>();
		specie = GetComponentInChildren<Specie>();
		rec = GetComponentInChildren<Recording>();

	}
	
	// Update is called once per frame
	void Update () {

		if(playerControl.isHoldingAnimal){
			setReferences();
			

			//Press button to enable music and recording 
			//Grab Input VCR and Recording for key presses, so we can loop
			if (instrumentObjectScript.underPlayerControl && vcr.mode != InputVCRMode.Record && Input.GetKeyDown(KeyCode.R))
			{
				//Find script for musical instrument, find sounds etc !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
				//Keyboard Controller and Instrument Controller should be attached to Player, activated when Animal is being Played, and filled in with sounds from Animal
				// THis will reference an audio file: specie.audioSchema[KeyCode.W];

				print("recording");
				vcr.Record();

			}


			// Stops recording, grab recorded frames and save to global storage of species track list
			//
			if (instrumentObjectScript.underPlayerControl && vcr.mode == InputVCRMode.Record && Input.GetKeyDown(KeyCode.T)) {
				vcr.Stop();
		//		Recording inputSequence = vcr.GetRecording();
				//Output to Species Track list 
				//AnimalTracks.Instance.AddTrackToSpecies(specie.specieName, inputSequence);

				print("stopped recording");
			}

			if(instrumentObjectScript.underPlayerControl && vcr.mode != InputVCRMode.Record && Input.GetKeyDown(KeyCode.Y)){
				vcr.Play();
			}
		}
	}


	//MUST PUT THE KEYBOARD CONTROLLER ON EACH OBJECT AND THEN 
}
