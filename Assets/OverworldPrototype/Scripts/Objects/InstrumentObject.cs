﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InstrumentObject : Interactable {
    public bool underPlayerControl;
    public InputVCR inputVCR;
    public Specie specie;

    public override void Start()
    {
        base.Start();
        inputVCR = GetComponent<InputVCR>();
        specie = GetComponent<Specie>();
    }

    public override void handleClickSuccess()
    {
        if (!underPlayerControl && !_player.GetComponent<FirstPersonController>().isHoldingAnimal)
        {
            base.handleClickSuccess();
            // move position to player's arm 
            underPlayerControl = true;
            _player.GetComponent<FirstPersonController>().isHoldingAnimal = true;
            interactable = false;
            FindPlayerArm();
        }
        // 
    }

    void Update()
    {
        //Press button to enable music and recording 
        //Grab Input VCR and Recording for key presses, so we can loop
        if (underPlayerControl && inputVCR.mode != InputVCRMode.Record && Input.GetKeyDown(KeyCode.R))
        {
            //Find script for musical instrument, find sounds etc !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            //Keyboard Controller and Instrument Controller should be attached to Player, activated when Animal is being Played, and filled in with sounds from Animal
            // THis will reference an audio file: specie.audioSchema[KeyCode.W];
            inputVCR.Record();

        }

        // Stops recording, grab recorded frames and save to global storage
        //
        if (underPlayerControl && inputVCR.mode == InputVCRMode.Record && Input.GetKeyDown(KeyCode.R)) {
            inputVCR.Stop();
            List<Recording.RecordingFrame> inputSequence = GetComponent<Recording>().frames;
            //Output to Species Track list 
            AnimalTracks.Instance.AddTrackToSpecies(specie.specieName, inputSequence);
        }

        if (Input.GetKeyDown(KeyCode.Space))
        {
            underPlayerControl = false;
            _player.GetComponent<FirstPersonController>().isHoldingAnimal = false;
            transform.SetParent(null);
            interactable = true;
        }
    }

    //How do we want to change tracks or select tracks??? What will the visualization be? 
    //void changeTrack(trackId)
    //{
    //    AnimalTracks.Instance.AssignTrackToAnimal(this.gameObject, trackId);
    //}

    void FindPlayerArm()
    {
        transform.SetParent(_player.transform);
        
        Vector3 armPosition = new Vector3(0.5f, 0f, 1f);

        transform.localPosition = armPosition;

        // Can show this with tiny animation and Arm movement

    }
}