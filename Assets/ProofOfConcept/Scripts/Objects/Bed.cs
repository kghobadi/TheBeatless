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

	AudioHelm.AudioHelmClock clock;

	public int windDir = 0;
	ParticleSystem wond;
	ParticleSystem windBlast;
    Sun sunScript;

    Vector3 sunStartPos;

    float originalPSpeed;

    public float minBpm, maxBpm;
    public float minSimSpeed;

    public int dayCounter;

    public float speedMultiplier;

    public override void Start()
	{
		clock = GameObject.Find ("clock").GetComponent<AudioHelm.AudioHelmClock> ();
        base.Start();
        fpc = _player.GetComponent<FirstPersonController>();
        cml = Camera.main.GetComponent<camMouseLook>();
        fpc.isAwake = true;
        interactable = true;
        sleepCounter = sleepLength;
        sun = GameObject.FindGameObjectWithTag("Sun");
        sunScript = sun.GetComponent<Sun>();
        sunStartPos = sun.transform.position;
		wond = GameObject.Find ("windParticles").GetComponent<ParticleSystem> ();
		windBlast = GameObject.Find ("windBlast").GetComponent<ParticleSystem> ();
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
            dayCounter++;

            //clock.bpm = Random.Range(minBpm, maxBpm);
            speedMultiplier = clock.bpm / minBpm;
            ParticleSystem.MainModule wondModule = wond.main;
            wondModule.simulationSpeed = minSimSpeed * speedMultiplier;

            windDir = Random.Range(0, 4);
            switch (windDir) {
			case 0: //left to right
				wond.transform.eulerAngles = new Vector3 (-90, 0, -90);
				windBlast.transform.eulerAngles = wond.transform.eulerAngles;

				//set the start of particles
				//set their motion
				//set simulation speed here when you've fucked w the BPM thingy
			break;

			case 1: //bottom to top
				wond.transform.eulerAngles = new Vector3(-90, 0, 180);
				windBlast.transform.eulerAngles = wond.transform.eulerAngles;
			break;

			case 2: //top to bottom
				wond.transform.eulerAngles = new Vector3(-90, 0, 0);
				windBlast.transform.eulerAngles = wond.transform.eulerAngles;
			break;

			case 3: //right to left
				wond.transform.eulerAngles = new Vector3(-90, 0, 90);
				windBlast.transform.eulerAngles = wond.transform.eulerAngles;
			break;


			}
        }

    }

}
