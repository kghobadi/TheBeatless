using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Menu : MonoBehaviour {
    


	void Start () {
        gameObject.SetActive(false);
	}
	

	void Update () {
        if (Input.GetKeyDown(KeyCode.LeftControl))
        {
            gameObject.SetActive(true);
        }
	}
}
