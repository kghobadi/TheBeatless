using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class Bed : Interactable
{
    public bool dayPassed;

    bool setDayPassed;
    float sleepCounter;
    float alphaVal;

    public Image sleepBlack;

    FirstPersonController fpc;
    camMouseLook cml;

    float originalPSpeed;

    public override void Start()
    {
        base.Start();
        fpc = _player.GetComponent<FirstPersonController>();
        cml = Camera.main.GetComponent<camMouseLook>();
        fpc.isAwake = true;
        interactable = true;
        sleepCounter = 10;

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
                sleepCounter = 10;
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
