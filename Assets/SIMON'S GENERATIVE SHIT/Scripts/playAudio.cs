﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class playAudio : MonoBehaviour {

	public AudioClip[] clips, switchedClips, secondClips;
	public bool clipsSwitched = false;
	public bool playedAudio = false;
	AudioSource audio;
	public int timeScale = 0;

	public float timer = 1;
	float timerStartVal = 1;

	public bool sprVisisble = false;



	private	void Awake() {
		timerStartVal = timer;



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
		audio.clip = clips [Random.Range (0, 7)];
		timeScale = Random.Range (0, 3);
	}
	
	// Update is called once per frame
	void Update () {

		if (audio.isPlaying) {
			timer -= Time.deltaTime;
			if (timer > 0) {
				sprVisisble = true;
			} else {
				sprVisisble = false;
			}
		} else {
			timer = timerStartVal;
		}
		if (GetComponent<growPlants> ().growthNumber == 1) {
			if (!clipsSwitched) {
				audio.clip = clips [Random.Range (0, 7)];
				clipsSwitched = true;
			}
			if (!audio.isPlaying) {
				//timeScale = Random.Range (0, 4);
				
				if (timeScale == 1) {
					audio.PlayScheduled (SimpleClock.AtNextEighth ());
					audio.SetScheduledEndTime (SimpleClock.AtNextHalf () + SimpleClock.AtNextBeat ());
				} else if (timeScale == 2) {
					audio.PlayScheduled (SimpleClock.AtNextHalf ());
					audio.SetScheduledEndTime (SimpleClock.AtNextMeasure () + SimpleClock.AtNextHalf ());
				} else if (timeScale == 3) {
					audio.PlayScheduled (SimpleClock.AtNextQuarter ());
					audio.SetScheduledEndTime (SimpleClock.AtNextQuarter () + SimpleClock.AtNextHalf ());
				} else if (timeScale == 0) {
					audio.PlayScheduled (SimpleClock.AtNextMeasure ());
					audio.SetScheduledEndTime (SimpleClock.AtNextMeasure () + SimpleClock.AtNextMeasure ());
				}
			}
		} else if (GetComponent<growPlants> ().growthNumber == 2) {
			if (!clipsSwitched) {
				audio.clip = switchedClips [Random.Range (0, 3)];
				clipsSwitched = true;
			}
			if (!audio.isPlaying) {
				//timeScale = Random.Range (0, 4);
				if (timeScale == 1) {
					audio.PlayScheduled (SimpleClock.AtNextSixteenth ());
					audio.SetScheduledEndTime (SimpleClock.AtNextSixteenth () + SimpleClock.AtNextBeat ());
				} else if (timeScale == 2) {
					audio.PlayScheduled (SimpleClock.AtNextHalf ());
					audio.SetScheduledEndTime (SimpleClock.AtNextBeat () + SimpleClock.AtNextHalf ());
				} else if (timeScale == 3) {
					audio.PlayScheduled (SimpleClock.AtNextQuarter ());
					audio.SetScheduledEndTime (SimpleClock.AtNextQuarter () + SimpleClock.AtNextMeasure ());
				} else if (timeScale == 0) {
					audio.PlayScheduled (SimpleClock.AtNextMeasure ());
					audio.SetScheduledEndTime (SimpleClock.AtNextMeasure () + SimpleClock.AtNextMeasure ());
				}
			}

		} else if (GetComponent<growPlants> ().growthNumber == 3) {
			if (!clipsSwitched) {
				audio.clip = secondClips [Random.Range (0, 4)];
				clipsSwitched = true;
			}

			if (!audio.isPlaying) {
				//timeScale = Random.Range (0, 4);

				if (timeScale == 1) {
					audio.PlayScheduled (SimpleClock.AtNextEighth ());
					audio.SetScheduledEndTime (SimpleClock.AtNextHalf () + SimpleClock.AtNextBeat ());
				} else if (timeScale == 2) {
					audio.PlayScheduled (SimpleClock.AtNextHalf ());
					audio.SetScheduledEndTime (SimpleClock.AtNextMeasure () + SimpleClock.AtNextHalf ());
				} else if (timeScale == 3) {
					audio.PlayScheduled (SimpleClock.AtNextQuarter ());
					audio.SetScheduledEndTime (SimpleClock.AtNextQuarter () + SimpleClock.AtNextHalf ());
				} else if (timeScale == 0) {
					audio.PlayScheduled (SimpleClock.AtNextMeasure ());
					audio.SetScheduledEndTime (SimpleClock.AtNextMeasure () + SimpleClock.AtNextMeasure ());
				}
			}

		}
		else {
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
