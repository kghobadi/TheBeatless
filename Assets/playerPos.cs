using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class playerPos : MonoBehaviour {
	public float timer = 0;
	public GameObject sparkle, player, sClone;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		timer += Time.deltaTime;
		if (timer > 15) {
			sClone = Instantiate(sparkle, player.transform.position, Quaternion.identity);
			timer = 0;
		}

		if (timer > 13) {
			Destroy(sClone);
		}


	}
}
