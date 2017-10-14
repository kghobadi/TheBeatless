using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class clickToFarm : MonoBehaviour {

	public GameObject hoedTile;

	public int numRows = 4;
	public int numColumns = 4;

	// Use this for initialization
	void Start () {
		for(int j = 0; j < numColumns; j++){
		for (int i = 0; i < numRows; i++) {
				Instantiate (hoedTile, new Vector3 ((i * 5), 0, j * 5), Quaternion.identity);
		}
	}
	}
	
	// Update is called once per frame
	void Update () {
		Ray ray = Camera.main.ScreenPointToRay (Input.mousePosition);

		RaycastHit rayHit = new RaycastHit ();

		if (Physics.Raycast (ray, out rayHit) && Input.GetMouseButtonDown(0)) {
			Debug.DrawRay (Camera.main.transform.position, rayHit.point);
			rayHit.collider.gameObject.GetComponent<growPlants> ().growthNumber++;
			rayHit.collider.gameObject.GetComponent<playAudio> ().playedAudio = false;

		}
	}
}
