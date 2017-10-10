using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
//using HoloPlaySDK;

public class pitchShift : MonoBehaviour{
    public AudioSource playSounds, playSounds2, playSounds3, playSounds4;
    public float xPos;
    public float yPos;
    public int ambPriority = 0;
	public AudioMixer LPF;

    InputVCR vcr;
    diffVisFeedback instrumentControl;
	// Use this for initialization
	void Start () {
        instrumentControl = GetComponent<diffVisFeedback>();
        vcr = GetComponent<InputVCR>();

        //Pulls sounds from Keyboard Controller of Animal
        playSounds = instrumentControl.playSounds;
        playSounds2 = instrumentControl.playSounds2;
        playSounds3 = instrumentControl.playSounds3;
        playSounds4 = instrumentControl.playSounds4;
	}

    // Update is called once per frame
    void Update() {
        //float xPos = ExtensionMethods.Remap(Input.mousePosition.x, 0, Screen.width, 0.9f, 1.1f);
        float xPos = ExtensionMethods.Remap(vcr.mousePosition.x, 0, Screen.width, -100, 4000f);
        float yPos = ExtensionMethods.Remap(vcr.mousePosition.y, 0, Screen.height, 0, 1);
        //audio[0].pitch = xPos;
        playSounds.volume = yPos;

        //audio[1].pitch = xPos;
        playSounds2.volume = yPos;

        LPF.SetFloat("lowPass", xPos);
//        print(xPos);

        playSounds3.volume = yPos;

        playSounds4.volume = yPos;
    }
}
