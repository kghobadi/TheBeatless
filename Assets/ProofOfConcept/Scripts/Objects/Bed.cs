using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class Bed : Interactable
{
    public bool dayPassed;

    bool setDayPassed;
    float sleepCounter;
    public float sleepLength;
    float alphaVal;
    
    public Image sleepBlack;

    FirstPersonController fpc;
    camMouseLook cml;

    GameObject sun;
    Sun sunScript;

    Vector3 sunStartPos;

    float originalPSpeed;

    public override void Start()
    {
        base.Start();
        fpc = _player.GetComponent<FirstPersonController>();
        cml = Camera.main.GetComponent<camMouseLook>();
        fpc.isAwake = true;
        interactable = true;
        sleepCounter = sleepLength;
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();
        sunStartPos = sun.transform.position;

        originalPSpeed = fpc.speed;
    }

    void Update()
    {
        if (!fpc.isAwake)
        {
            alphaVal += 0.6f * Time.deltaTime;
            interactable = false;
            fpc.speed = 0;
            cml.enabled = false;

            if (!setDayPassed)
            {
                dayPassed = true;
                setDayPassed = true;
            }
            else
            {
                dayPassed = false;
            }

            sleepCounter -= 1 * Time.deltaTime;
            if (sleepCounter < 0)
            {
                fpc.isAwake = true;
                sleepCounter = sleepLength;
                sun.transform.position = sunStartPos;
                fpc.isHoldingSeed = false;
            }

        }
        else
        {
            alphaVal -= 0.6f * Time.deltaTime;
            interactable = true;
            fpc.speed = originalPSpeed;
            cml.enabled = true;
            setDayPassed = false;
        }

        sleepBlack.color = new Color(0f, 0f, 0f, alphaVal);

        alphaVal = Mathf.Clamp01(alphaVal);

    }

    public override void handleClickSuccess()
    {
        base.handleClickSuccess();
        if (fpc.isAwake)
        {
            fpc.isAwake = false;
            setDayPassed = false;
        }

    }

}
