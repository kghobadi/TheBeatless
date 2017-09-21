using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
//using HoloPlaySDK;

public class pitchShift : MonoBehaviour{
	public AudioSource[] audio = new AudioSource[4];
    public float xPos;
    public float yPos;
    public int ambPriority = 0;
	public AudioMixer LPF;
	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
      float xPos = ExtensionMethods.Remap(Input.mousePosition.x, 0, Screen.width, -100, 5000);
       float yPos = ExtensionMethods.Remap(Input.mousePosition.y, 0, Screen.height, 0, 1);
        //audio[0].pitch = xPos;
        audio[0].volume = yPos;

		//audio[1].pitch = xPos;
		audio[1].volume = yPos;

		LPF.SetFloat ("lowPass", xPos);
		print (xPos);
		audio[2].volume = yPos;

		//audio[3].pitch = xPos;
		audio[3].volume = yPos;


       // print(Input.mousePosition);
	}

   /* public override void onDepthTouch(List<depthTouch> touches)
    {
        base.onDepthTouch(touches);
        xPos = ExtensionMethods.Remap(touches[ambPriority].getLocalPos().x, 8, -8, 0, 1);
        yPos = ExtensionMethods.Remap(touches[ambPriority].getLocalPos().y, -6, 4, 0, 1);
        //zPos = ExtensionMethods.Remap(touches[ambPriority])
    } */
}
