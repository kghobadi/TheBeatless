using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class plantGrowth : MonoBehaviour {
	public GameObject plantPiece, plantGrow;
	List<GameObject> plantList = new List<GameObject> ();
	public int pieces;
	public static int spawners;

	void Update () {
		
		while (pieces > 0) {
			transform.Translate (new Vector3(Random.Range(-1/2f, 1/2f), 1/10f, Random.Range(-1/2f, 1/2f)));
			while (plantGrowth.spawners < 20) {
				if (Random.Range (0, 1f) < .01f) {
					Instantiate (plantGrow, transform.position, Quaternion.identity);
					plantGrowth.spawners += 1;
				}
			}
			GameObject newPlantPiece = (GameObject)Instantiate(plantPiece, transform.position, Quaternion.identity);
			plantList.Add (newPlantPiece);
			pieces -= 1;
		}

		for (int i = 0; i < plantList.Count; i++) {
			plantList [i].transform.localScale = new Vector3 ((plantList.Count - i)/25f, (plantList.Count - i)/25f, (plantList.Count - i)/25f);
		}
	}
}
