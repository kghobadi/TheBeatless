using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class playAudio : MonoBehaviour {

	public AudioClip[] clips;
	public bool playedAudio = false;
	AudioSource audio;

	// Use this for initialization
	void Start () {
		audio = GetComponent<AudioSource>();
	}
	
	// Update is called once per frame
	void Update () {
			if (GetComponent<growPlants> ().growthNumber == 1) {
			if (!playedAudio) {
				audio.clip = clips [Random.Range (0, 1)];
				playedAudio = true;
			}
			//print ("playing");
			}
			if (GetComponent<growPlants> ().growthNumber == 2) {
			if (!playedAudio) {
				audio.clip = clips [Random.Range (1, 2)];
				playedAudio = true;
			}
			}
			if (GetComponent<growPlants> ().growthNumber == 3) {
			if (!playedAudio) {
				audio.clip = clips [Random.Range (2, 3)];
				playedAudio = true;
			}
			} else {
			if (!playedAudio) {
				audio.clip = null;
				playedAudio = true;
			}
			}

		//}

		if (!audio.isPlaying) {
			audio.Play ();
		}
	}
}
