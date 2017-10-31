using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class leftArmManager : MonoBehaviour
{

    public GameObject recorder, shovel;
    AudioListener mainListener;
    public AudioListener recorderListener;
    bool holdingSomething;

    // Use this for initialization
    void Start()
    {
        mainListener = Camera.main.gameObject.GetComponent<AudioListener>();

    }

    // Update is called once per frame
    void Update()
    {



        if (Input.GetKeyDown(KeyCode.Alpha1) && recorder != null)
        {
            if (!recorder.activeSelf && !holdingSomething)
            {
                recorder.SetActive(true);
                holdingSomething = true;
                recorderListener.enabled = true;
                mainListener.enabled = false;
            }
            else
            {
                recorder.SetActive(false);
                holdingSomething = false;
                recorderListener.enabled = false;
                mainListener.enabled = true;
            }
        }

        if (Input.GetKeyDown(KeyCode.Alpha2) && shovel != null)
        {
            if (!recorder.activeSelf && !holdingSomething)
            {
                shovel.SetActive(true);
                holdingSomething = true;
            }
            else
            {
                shovel.SetActive(false);
                holdingSomething = false;
            }
        }


    }
}
