using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class changeFreqObj : MonoBehaviour {
	public GameObject W, A, S, D;
	Mesh Wmesh, Amesh, Smesh, Dmesh;
	Vector3[] origWVert, origAVert, origSVert, origDVert, wNormals, aNormals, sNormals, dNormals;

	void Start(){
		Wmesh = W.GetComponent<MeshFilter>().mesh;
		Amesh = A.GetComponent<MeshFilter>().mesh;
		Smesh = S.GetComponent<MeshFilter>().mesh;
		Dmesh = D.GetComponent<MeshFilter>().mesh;
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
		Vector3[] Wvertices = Wmesh.vertices;
		Vector3[] Avertices = Amesh.vertices;
		Vector3[] Svertices = Smesh.vertices;
		Vector3[] Dvertices = Dmesh.vertices;
		
		if (Input.GetKey (KeyCode.W)) {
			int i = 0;
			while (i < Wvertices.Length) {
				Wvertices[i] = transform.InverseTransformPoint(transform.TransformPoint(origWVert[i]) + ((wNormals[i] * ((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width) / 500) * Mathf.Sin((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width / 10) * Time.time))));
				i++;
			}
			Wmesh.vertices = Wvertices;
			Wmesh.RecalculateBounds ();

		} else {
			int i = 0;
			while (i < Wvertices.Length) {
				//return vertices to original position
				Wvertices [i] = Vector3.Lerp(Wvertices[i], origWVert[i], 5 * Time.deltaTime);
				i++;
			}
			Wmesh.vertices = Wvertices;
			Wmesh.RecalculateBounds ();
		}

		if (Input.GetKey (KeyCode.A)) {
			int i = 0;
			while (i < Avertices.Length) {
				Avertices[i] = transform.InverseTransformPoint(transform.TransformPoint(origAVert[i]) + ((aNormals[i] * ((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width) / 500) * Mathf.Sin((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width / 10) * Time.time))));
				i++;
			}
			Amesh.vertices = Avertices;
			Amesh.RecalculateBounds ();

		} else {
			int i = 0;
			while (i < Avertices.Length) {
				//return vertices to original position
				Avertices [i] = Vector3.Lerp(Avertices[i], origAVert[i], 5 * Time.deltaTime);
				i++;
			}
			Amesh.vertices = Avertices;
			Amesh.RecalculateBounds ();
		}

		if (Input.GetKey (KeyCode.S)) {
			int i = 0;
			while (i < Svertices.Length) {
				Svertices[i] = transform.InverseTransformPoint(transform.TransformPoint(origSVert[i]) + ((sNormals[i] * ((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width) / 500) * Mathf.Sin((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width / 10) * Time.time))));
				i++;
			}
			Smesh.vertices = Svertices;
			Smesh.RecalculateBounds ();

		} else {
			int i = 0;
			while (i < Svertices.Length) {
				//return vertices to original position
				Svertices [i] = Vector3.Lerp(Svertices[i], origSVert[i], 5 * Time.deltaTime);
				i++;
			}
			Smesh.vertices = Svertices;
			Smesh.RecalculateBounds ();
		}

		if (Input.GetKey (KeyCode.D)) {
			int i = 0;
			while (i < Dvertices.Length) {
				Dvertices[i] = transform.InverseTransformPoint(transform.TransformPoint(origDVert[i]) + ((dNormals[i] * ((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width) / 500) * Mathf.Sin((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width / 10) * Time.time))));
				i++;
			}
			Dmesh.vertices = Dvertices;
			Dmesh.RecalculateBounds ();

		} else {
			int i = 0;
			while (i < Dvertices.Length) {
				//return vertices to original position
				Dvertices [i] = Vector3.Lerp(Dvertices[i], origDVert[i], 5 * Time.deltaTime);
				i++;
			}
			Dmesh.vertices = Dvertices;
			Dmesh.RecalculateBounds ();
		}


	}
}
