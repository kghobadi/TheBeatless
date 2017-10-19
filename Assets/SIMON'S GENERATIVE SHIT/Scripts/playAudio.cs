using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class playAudio : MonoBehaviour {

	public AudioClip[] clips;
	public bool playedAudio = false;
	AudioSource audio;
	public int timeScale = 0;

	private	void Awake() {

		SimpleClock.ThirtySecond += OnThirtySecond;
		//audio.clip = clips [Random.Range (0, 1)];
	}

	private void OnDestroy(){
		SimpleClock.ThirtySecond -= OnThirtySecond;
	}



	void OnThirtySecond(BeatArgs e)
	{
		if (e.TickMask [TickValue.Eighth]) {
		//	audio.clip = clips [Random.Range (0, 1)];
			//audio.Play ();
		}


	}

	// Use this for initialization
	void Start () {
		audio = GetComponent<AudioSource>();
		audio.clip = clips [Random.Range (0, 4)];
		timeScale = Random.Range (0, 4);
	}
	
	// Update is called once per frame
	void Update () {
		if (GetComponent<growPlants> ().growthNumber == 1) {
			if (!audio.isPlaying) {
				//timeScale = Random.Range (0, 4);
				
				if (timeScale == 1) {
					audio.PlayScheduled (SimpleClock.AtNextEighth ());
					audio.SetScheduledEndTime (SimpleClock.AtNextQuarter ());
				} else if (timeScale == 2) {
					audio.PlayScheduled (SimpleClock.AtNextHalf ());
					audio.SetScheduledEndTime (SimpleClock.AtNextMeasure () + SimpleClock.AtNextHalf());
				} else if (timeScale == 3) {
					audio.PlayScheduled (SimpleClock.AtNextQuarter ());
					audio.SetScheduledEndTime (SimpleClock.AtNextQuarter () + SimpleClock.AtNextHalf());
				} else if (timeScale == 0) {
					audio.PlayScheduled (SimpleClock.AtNextMeasure ());
					audio.SetScheduledEndTime (SimpleClock.AtNextMeasure () + SimpleClock.AtNextMeasure());
				}
			}
		} else {
			audio.Stop ();
		}
		//audio.PlayScheduled (SimpleClock.AtNextEighth());
		/*	if (GetComponent<growPlants> ().growthNumber == 1) {
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
		*/
	}
}
