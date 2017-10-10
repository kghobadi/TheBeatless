using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TrailColor : MonoBehaviour {


    public TrailRenderer trailRender;
    private float counter = 0;

    void Start () {

        trailRender = GetComponent<TrailRenderer>();
    }
	
	// Update is called once per frame
	void Update () {
        counter += 1 * Time.deltaTime;

        if (counter > 1)
        {
            SetTrailColor();
            counter = 0;
        }

    }

    void SetTrailColor()
    {
        int randoColor = Random.Range(1, 6);

        switch (randoColor)
        {
            case 6:
                trailRender.material.SetColor("_TintColor", Color.red);
              //  Debug.Log("red");
                break;
                
            case 5:
                trailRender.material.SetColor("_TintColor", Color.blue);
              //  Debug.Log("blue");
                break;
            case 4:
                trailRender.material.SetColor("_TintColor", Color.yellow);
              //  Debug.Log("yellow");
                break;
            case 3:
                trailRender.material.SetColor("_TintColor", Color.green);
              //  Debug.Log("green");
                break;
            case 2:
                trailRender.material.SetColor("_TintColor", Color.magenta);
               // Debug.Log("magenta");
                break;
            case 1:
                trailRender.material.SetColor("_TintColor", Color.cyan);
              //  Debug.Log("cyan");
                break;

        }
    }
}
