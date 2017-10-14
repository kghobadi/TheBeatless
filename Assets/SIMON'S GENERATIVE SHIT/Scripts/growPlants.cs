using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class growPlants : MonoBehaviour {

	public int growthNumber = 0;

	Material growthMat;
	Material defMat;

	// Use this for initialization
	void Start () {
		defMat = GetComponent<MeshRenderer> ().material;
		growthNumber = 0;
		growthMat = new Material(defMat);
		GetComponent<MeshRenderer> ().material = growthMat;
		growthMat.color = Color.yellow;
	}
	
	// Update is called once per frame
	void Update () {
		if (growthNumber > 3) {
			growthNumber = 0;
			growthMat.color = Color.yellow;
		}

		if (growthNumber == 1) {
			growthMat.color = Color.green;
		}

		if (growthNumber == 2) {
			growthMat.color = Color.blue;
		}

		if (growthNumber == 3) {
			growthMat.color = Color.red;
		}
	}
}
