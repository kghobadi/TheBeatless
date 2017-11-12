using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class Bed : Interactable
{
    public bool dayPassed;

    bool setDayPassed;
    float sleepCounter;

    public Image sleepBlack;

    FirstPersonController fpc;

    public override void Start()
    {
        base.Start();
        fpc = _player.GetComponent<FirstPersonController>();
        fpc.isAwake = true;
        interactable = true;
        sleepCounter = 10;
    }

    void Update()
    {
        if (!fpc.isAwake)
        {
            interactable = false;
            sleepCounter -= 1 * Time.deltaTime;
            if(sleepCounter < 0)
            {
                if (!setDayPassed)
                {
                    dayPassed = true;
                    setDayPassed = true;
                }
                else
                {
                    dayPassed = false;
                    fpc.isAwake = true;
                    sleepCounter = 10;
                }
            }
            
        }
        else
        {
            interactable = true;
            sleepBlack.color = Color.Lerp(sleepBlack.color, Color.clear, Time.deltaTime);
        }
    }

    public override void handleClickSuccess()
    {
        base.handleClickSuccess();
        if (fpc.isAwake)
        {
            sleepBlack.color = Color.Lerp(sleepBlack.color, Color.black, Time.deltaTime);
            fpc.isAwake = false;
        }
        

    }

}
