using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class diffVisFeedback : MonoBehaviour {
	public float speed = 10f;
	public float originalSpeed = 1f;
	public Vector3 target;
	private ParticleSystem editParts;
	private Material editMatColor;


	public AudioClip[] sounds;
	public AudioSource playSounds, playSounds2, playSounds3, playSounds4;

	// Use this for initialization
	void Start () {
		editParts = GetComponent<ParticleSystem>();
		editMatColor = GetComponent<Renderer>().material;
		//GetComponent<ParticleSystem>().
	}
	
	// Update is called once per frame
	void Update () {

		playSounds.clip = sounds [0];
		playSounds2.clip = sounds [1];
		playSounds3.clip = sounds [2];
		playSounds4.clip = sounds [3];

		if (Input.GetKey (KeyCode.W)) {
			speed = Mathf.Lerp (speed, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height), Time.deltaTime);
			target = new Vector3 ((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width)/5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height)/5, transform.localScale.z);

			transform.localScale = Vector3.Lerp (transform.localScale, target, Time.deltaTime);
			//transform.localEulerAngles = new Vector3 ((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width) * 10, (Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width) * 10, (Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width) * 10);



			//sets audiosource loop setting to true because the key is held down
			playSounds.loop = true;
			//checks to make sure only one instance of the sound is playing at once
			if (!playSounds.isPlaying) {
				//plays sound
				playSounds.Play ();
			}

		} else {
			transform.localScale = Vector3.Lerp (transform.localScale, new Vector3 (1, 1, 1), Time.deltaTime);
			speed = Mathf.Lerp (speed, originalSpeed, Time.deltaTime);

			//if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
			playSounds.clip = null;
			playSounds.loop = false;
		}



		if (Input.GetKey (KeyCode.A)) {
			
			Color changeColor = editMatColor.color;

			changeColor = Color.HSVToRGB((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width) / 50, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 50, .7f);

			editMatColor.color = changeColor;

			//sets audiosource loop setting to true because the key is held down
			playSounds4.loop = true;
			//checks to make sure only one instance of the sound is playing at once
			if (!playSounds4.isPlaying) {
				//plays sound
				playSounds4.Play ();
			}

		} else {
			Color changeColor = editMatColor.color;

			changeColor = Color.Lerp(changeColor, Color.white, Time.deltaTime);

			editMatColor.color = changeColor;

			//if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
			playSounds4.clip = null;
			playSounds4.loop = false;
		}


		if (Input.GetKey (KeyCode.S)) {
			var main = editParts.noise;
			main.frequency = Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height / 18;

			main.strength = Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width / 18;
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





		if (Input.GetKey (KeyCode.D)) {
			var main = editParts.emission;
			main.rateOverTime = (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height);

			var main2 = editParts.main;
			main2.startSpeed = (Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width) / 5;

			//sets audiosource loop setting to true because the key is held down
			playSounds3.loop = true;
			//checks to make sure only one instance of the sound is playing at once
			if (!playSounds3.isPlaying) {
				//plays sound
				playSounds3.Play ();
			}

		} else {
			var main = editParts.emission;
			main.rateOverTime = 0;

			var main2 = editParts.main;
			main2.startSpeed = 0;

			//if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
			playSounds3.clip = null;
			playSounds3.loop = false;
		}


	}
}
