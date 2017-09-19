using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class keyboardInput : MonoBehaviour {
	public AudioClip[] sounds;
	public AudioSource playSounds, playSounds2, playSounds3, playSounds4;
	public bool mouseStuff, particleStuff, movementInput, multiKeyInput, oneKeyInput;
	public GameObject[] particles;
	// Use this for initialization
	void Start () {
		mouseStuff = false;
		particleStuff = false;
		movementInput = false;
		multiKeyInput = false;
		oneKeyInput = false;
	}
	
	// Update is called once per frame
	void Update () {

		ExtensionMethods.Remap (Input.GetAxis ("Mouse Y"), -10, 10, 0, 1);

		//movement input, can press different directional keys, but not opposite
		if (movementInput) {
			multiKeyInput = false;
			oneKeyInput = false;
			//Input for movementInput
			//uses vertical/horizontal axis so it's both WASD and Arrow Keys
			if (Input.GetAxisRaw ("Vertical") == 1) {
				//sets audiosource clip as first sound in array of clips
				playSounds.clip = sounds [0];
				//sets audiosource loop setting to true because the key is held down
				playSounds.loop = true;
				//checks to make sure only one instance of the sound is playing at once
				if (!playSounds.isPlaying) {
					//plays sound
					playSounds.Play ();
				}
			} else if (Input.GetAxisRaw ("Vertical") == -1) {
				playSounds.clip = sounds [1];
				playSounds.loop = true;
				if (!playSounds.isPlaying) {
					playSounds.Play ();
				}
			} else if (Input.GetAxisRaw ("Horizontal") == 1) {
				playSounds.clip = sounds [2];
				playSounds.loop = true;
				if (!playSounds.isPlaying) {
					playSounds.Play ();
				}
			} else if (Input.GetAxisRaw ("Horizontal") == -1) {
				playSounds.clip = sounds [3];
				playSounds.loop = true;
				if (!playSounds.isPlaying) {
					playSounds.Play ();
				}
			} else {
				//if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
				playSounds.clip = null;
				playSounds.loop = false;
			}
		}

		if (multiKeyInput) {
			movementInput = false;
			oneKeyInput = false;

			playSounds.clip = sounds [0];
			playSounds2.clip = sounds [1];
			playSounds3.clip = sounds [2];
			playSounds4.clip = sounds [3];

			if (Input.GetKey(KeyCode.W)) {
				//sets audiosource loop setting to true because the key is held down
				playSounds.loop = true;
				//checks to make sure only one instance of the sound is playing at once
				if (!playSounds.isPlaying) {
					//plays sound
					playSounds.Play ();
				}
			} else {
				//if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
				playSounds.clip = null;
				playSounds.loop = false;
			}

			if (Input.GetKey(KeyCode.S)) {
				//sets audiosource loop setting to true because the key is held down
				playSounds2.loop = true;
				//checks to make sure only one instance of the sound is playing at once
				if (!playSounds2.isPlaying) {
					//plays sound
					playSounds2.Play ();
				}
			} else {
				//if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
				playSounds2.clip = null;
				playSounds2.loop = false;
			}

			if (Input.GetKey(KeyCode.D)) {
				//sets audiosource loop setting to true because the key is held down
				playSounds3.loop = true;
				//checks to make sure only one instance of the sound is playing at once
				if (!playSounds3.isPlaying) {
					//plays sound
					playSounds3.Play ();
				}
			} else {
				//if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
				playSounds3.clip = null;
				playSounds3.loop = false;
			}
			if (Input.GetKey(KeyCode.A)) {
				//sets audiosource loop setting to true because the key is held down
				playSounds4.loop = true;
				//checks to make sure only one instance of the sound is playing at once
				if (!playSounds4.isPlaying) {
					//plays sound
					playSounds4.Play ();
				}
			} else {
				//if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
				playSounds4.clip = null;
				playSounds4.loop = false;
			}
		}

		if (oneKeyInput) {
			movementInput = false;
			multiKeyInput = false;
			//Input for oneKeyInput
			//uses WASD so can detect only one key at a time
			if (Input.GetKey(KeyCode.W)) {
				//sets audiosource clip as first sound in array of clips
				playSounds.clip = sounds [0];
				//sets audiosource loop setting to true because the key is held down
				playSounds.loop = true;
				//checks to make sure only one instance of the sound is playing at once
				if (!playSounds.isPlaying) {
					//plays sound
					playSounds.Play ();
				}
			} else if (Input.GetKey(KeyCode.S)) {
				playSounds.clip = sounds [1];
				playSounds.loop = true;
				if (!playSounds.isPlaying) {
					playSounds.Play ();
				}
			} else if (Input.GetKey(KeyCode.D)) {
				playSounds.clip = sounds [2];
				playSounds.loop = true;
				if (!playSounds.isPlaying) {
					playSounds.Play ();
				}
			} else if (Input.GetKey(KeyCode.A)) {
				playSounds.clip = sounds [3];
				playSounds.loop = true;
				if (!playSounds.isPlaying) {
					playSounds.Play ();
				}
			} else {
				//if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
				playSounds.clip = null;
				playSounds.loop = false;
			}
		}






		if (mouseStuff) {
			playSounds.pitch += Input.GetAxis ("Mouse Y") * Time.deltaTime;
			playSounds.panStereo += Input.GetAxis ("Mouse X") * Time.deltaTime;
		} else {
			playSounds.pitch = 1f;
			playSounds.panStereo = 0f;
		}

		if (particleStuff) {
			if (Input.GetAxisRaw ("Vertical") == 1) {
				particles [0].SetActive (true);
			} else {
				particles [0].SetActive (false);
			}
			if (Input.GetAxisRaw ("Vertical") == -1) {
				particles [1].SetActive (true);
			} else {
				particles [1].SetActive (false);
			}
			if (Input.GetAxisRaw ("Horizontal") == 1) {
				particles [2].SetActive (true);
			} else {
				particles [2].SetActive (false);
			}
			if (Input.GetAxisRaw ("Horizontal") == -1) {
				particles [3].SetActive (true);
			} else {
				particles [3].SetActive (false);
			}
		} else {
			particles [0].SetActive (false);
			particles [1].SetActive (false);
			particles [2].SetActive (false);
			particles [3].SetActive (false);
		}
	}
}
