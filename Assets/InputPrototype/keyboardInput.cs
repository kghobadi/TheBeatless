using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class keyboardInput : MonoBehaviour {
	public AudioClip[] sounds;
	public AudioSource playSounds, playSounds2, playSounds3, playSounds4;

	//put objects you're manipulating as the public gameobjects here
	public GameObject W, A, S, D;

	//creates mesh for all gameobjects, requires 3d model
	Mesh Wmesh, Amesh, Smesh, Dmesh;
	Vector3[] origWVert, origAVert, origSVert, origDVert, wNormals, aNormals, sNormals, dNormals;


	// Use this for initialization
	void Start () {
		//sets mesh
		Wmesh = W.GetComponent<MeshFilter>().mesh;
		Amesh = A.GetComponent<MeshFilter>().mesh;
		Smesh = S.GetComponent<MeshFilter>().mesh;
		Dmesh = D.GetComponent<MeshFilter>().mesh;
		//sets array of vertices so it can return to original mesh
		origWVert = Wmesh.vertices;
		wNormals = Wmesh.normals;
		origAVert = Amesh.vertices;
		aNormals = Amesh.normals;
		origSVert = Smesh.vertices;
		sNormals = Smesh.normals;
		origDVert = Dmesh.vertices;
		dNormals = Dmesh.normals;

	}
	
	// Update is called once per frame
	void Update () {
			//updates current position of each mesh
			Vector3[] Wvertices = Wmesh.vertices;
			Vector3[] Avertices = Amesh.vertices;
			Vector3[] Svertices = Smesh.vertices;
			Vector3[] Dvertices = Dmesh.vertices;
			

			playSounds.clip = sounds [0];
			playSounds2.clip = sounds [1];
			playSounds3.clip = sounds [2];
			playSounds4.clip = sounds [3];

			if (Input.GetKey(KeyCode.W)) {
				
				//vertical mouse position sets scale
				W.transform.localScale = new Vector3 ((Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5);
				
				//manipulates vertices of mesh to horizontal input
				int i = 0;
				while (i < Wvertices.Length) {
					Wvertices[i] = transform.InverseTransformPoint(transform.TransformPoint(origWVert[i]) + ((wNormals[i] * ((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width) / 500) * Mathf.Sin((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width / 10) * Time.time))));
					i++;
				}
				Wmesh.vertices = Wvertices;
				Wmesh.RecalculateBounds ();

				//sets audiosource loop setting to true because the key is held down
				playSounds.loop = true;
				//checks to make sure only one instance of the sound is playing at once
				if (!playSounds.isPlaying) {
					//plays sound
					playSounds.Play ();
				}
			} else {
			
				//on key up, returns vertices to original position of mesh
				int i = 0;
				while (i < Wvertices.Length) {
					//return vertices to original position
					Wvertices [i] = Vector3.Lerp(Wvertices[i], origWVert[i], 5 * Time.deltaTime);
					i++;
				}
				Wmesh.vertices = Wvertices;
				Wmesh.RecalculateBounds ();
				
				//if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
				playSounds.clip = null;
				playSounds.loop = false;
			}

			if (Input.GetKey(KeyCode.S)) {
				
				//manipulates vertices of mesh to horizontal input
				int i = 0;
				while (i < Svertices.Length) {
					Svertices[i] = transform.InverseTransformPoint(transform.TransformPoint(origSVert[i]) + ((sNormals[i] * ((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width) / 500) * Mathf.Sin((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width / 10) * Time.time))));
					i++;
				}
				Smesh.vertices = Svertices;
				Smesh.RecalculateBounds ();

				//vertical mouse position sets scale
				S.transform.localScale = new Vector3 ((Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5);

				//sets audiosource loop setting to true because the key is held down
				playSounds2.loop = true;
				//checks to make sure only one instance of the sound is playing at once
				if (!playSounds2.isPlaying) {
					//plays sound
					playSounds2.Play ();
				}
			} else {
				//on key up, returns vertices to original position of mesh
				int i = 0;
				while (i < Svertices.Length) {
					//return vertices to original position
					Svertices [i] = Vector3.Lerp(Svertices[i], origSVert[i], 5 * Time.deltaTime);
					i++;
				}
				Smesh.vertices = Svertices;
				Smesh.RecalculateBounds ();

				//if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
				playSounds2.clip = null;
				playSounds2.loop = false;
			}

			if (Input.GetKey(KeyCode.D)) {
				
				//manipulates vertices of mesh to horizontal input
				int i = 0;
				while (i < Dvertices.Length) {
					Dvertices[i] = transform.InverseTransformPoint(transform.TransformPoint(origDVert[i]) + ((dNormals[i] * ((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width) / 500) * Mathf.Sin((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width / 10) * Time.time))));
					i++;
				}
				Dmesh.vertices = Dvertices;
				Dmesh.RecalculateBounds ();
				
				//vertical mouse position sets scale
				D.transform.localScale = new Vector3 ((Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5);


				//sets audiosource loop setting to true because the key is held down
				playSounds3.loop = true;
				//checks to make sure only one instance of the sound is playing at once
				if (!playSounds3.isPlaying) {
					//plays sound
					playSounds3.Play ();
				}
			} else {
			
				//on key up, returns vertices to original position of mesh
				int i = 0;
				while (i < Dvertices.Length) {
					//return vertices to original position
					Dvertices [i] = Vector3.Lerp(Dvertices[i], origDVert[i], 5 * Time.deltaTime);
					i++;
				}
				Dmesh.vertices = Dvertices;
				Dmesh.RecalculateBounds ();

				//if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
				playSounds3.clip = null;
				playSounds3.loop = false;
			}

			if (Input.GetKey(KeyCode.A)) {
				
				//manipulates vertices of mesh to horizontal input
				int i = 0;
				while (i < Avertices.Length) {
					Avertices[i] = transform.InverseTransformPoint(transform.TransformPoint(origAVert[i]) + ((aNormals[i] * ((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width) / 500) * Mathf.Sin((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width / 10) * Time.time))));
					i++;
				}
				Amesh.vertices = Avertices;
				Amesh.RecalculateBounds ();
			
				//vertical mouse position sets scale
				A.transform.localScale = new Vector3 ((Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5, (Camera.main.WorldToScreenPoint (Input.mousePosition).y / Screen.height) / 5);

				//sets audiosource loop setting to true because the key is held down
				playSounds4.loop = true;
				//checks to make sure only one instance of the sound is playing at once
				if (!playSounds4.isPlaying) {
					//plays sound
					playSounds4.Play ();
				}
			} else {
			
				//on key up, returns vertices to original position of mesh
				int i = 0;
				while (i < Avertices.Length) {
					//return vertices to original position
					Avertices [i] = Vector3.Lerp(Avertices[i], origAVert[i], 5 * Time.deltaTime);
					i++;
				}
				Amesh.vertices = Avertices;
				Amesh.RecalculateBounds ();

				//if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
				playSounds4.clip = null;
				playSounds4.loop = false;
			}


		/*if (oneKeyInput) {
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
		}*/

		//movement input, can press different directional keys, but not opposite
		/*if (movementInput) {
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
		}*/

	}
}
