using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CropCurrency : MonoBehaviour {

    public int cropCounter;

    public Text cropDisplayAmount;

	void Start () {
        cropCounter = 0;
		
	}
	
	void Update () {
        cropDisplayAmount.text = cropCounter.ToString();
        //animate crop symbol
	}
}
