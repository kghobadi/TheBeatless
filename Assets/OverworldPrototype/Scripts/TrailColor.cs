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
        int randoColor = Random.Range(0, 8);

        switch (randoColor)
        {
            case 8:
                trailRender.material.SetColor("_TintColor", Color.red);
                break;
            case 7:
                trailRender.material.SetColor("_TintColor", Color.blue);
                break;
            case 6:
                trailRender.material.SetColor("_TintColor", Color.yellow);
                break;
            case 5:
                trailRender.material.SetColor("_TintColor", Color.green);
                break;
            case 4:
                trailRender.material.SetColor("_TintColor", Color.magenta);
                break;
            case 3:
                trailRender.material.SetColor("_TintColor", Color.cyan);
                break;
            case 2:
                trailRender.material.SetColor("_TintColor", Color.white);
                break;
            case 1:
                trailRender.material.SetColor("_TintColor", Color.black);
                break;
            case 0:
                trailRender.material.SetColor("_TintColor", Color.gray);
                break;

        }
    }
}
