using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class playAudio1 : MonoBehaviour
{

    public AudioClip[] clips, switchedClips, secondClips;
    public bool clipsSwitched = false;
    public bool playedAudio = false;
    AudioSource audioSource;
    public int timeScale = 0;

    public float timer = 1;
    float timerStartVal = 1;

    public bool sprVisisble = false;

    PlantLife plantlife;

    private void Awake()
    {
        timerStartVal = timer;

        plantlife = GetComponent<PlantLife>();

        SimpleClock.ThirtySecond += OnThirtySecond;
        //audio.clip = clips [Random.Range (0, 1)];
    }

    private void OnDestroy()
    {
        SimpleClock.ThirtySecond -= OnThirtySecond;
    }



    void OnThirtySecond(BeatArgs e)
    {
        if (e.TickMask[TickValue.Eighth])
        {
            //	audio.clip = clips [Random.Range (0, 1)];
            //audio.Play ();
        }


    }

    // Use this for initialization
    void Start()
    {
        audioSource = GetComponent<AudioSource>();
        audioSource.clip = clips[Random.Range(0, 6)];
        timeScale = Random.Range(1, 4);
    }

    // Update is called once per frame
    void Update()
    {

        if (audioSource.isPlaying)
        {
            timer -= Time.deltaTime;
            if (timer > 0)
            {
                sprVisisble = true;
            }
            else
            {
                sprVisisble = false;
            }
        }
        else
        {
            timer = timerStartVal;
        }
        switch (plantlife.ageCounter)
        {
            case 0:
                if (!clipsSwitched)
                {
                    audioSource.clip = clips[Random.Range(0, 7)];
                    clipsSwitched = true;
                }
                if (!audioSource.isPlaying)
                {
                    //timeScale = Random.Range (0, 4);

                    switch (timeScale)
                    {
                        case 1:
                            audioSource.PlayScheduled(SimpleClock.AtNextEighth());
                            audioSource.SetScheduledEndTime(SimpleClock.AtNextHalf() + SimpleClock.AtNextBeat());
                            break;
                        case 2:
                            audioSource.PlayScheduled(SimpleClock.AtNextHalf());
                            audioSource.SetScheduledEndTime(SimpleClock.AtNextMeasure() + SimpleClock.AtNextHalf());
                            break;
                        case 3:
                            audioSource.PlayScheduled(SimpleClock.AtNextQuarter());
                            audioSource.SetScheduledEndTime(SimpleClock.AtNextQuarter() + SimpleClock.AtNextHalf());
                            break;
                        case 4:
                            audioSource.PlayScheduled(SimpleClock.AtNextMeasure());
                            audioSource.SetScheduledEndTime(SimpleClock.AtNextMeasure() + SimpleClock.AtNextMeasure());
                            break;
                    }

                }
                    break;

            case 1:
                if (!clipsSwitched)
                {
                    audioSource.clip = switchedClips[Random.Range(0, 2)];
                    clipsSwitched = true;
                }
                if (!audioSource.isPlaying)
                {
                    switch (timeScale)
                    {
                        case 1:
                            audioSource.PlayScheduled(SimpleClock.AtNextSixteenth());
                            audioSource.SetScheduledEndTime(SimpleClock.AtNextSixteenth() + SimpleClock.AtNextBeat());
                            break;
                        case 2:
                            audioSource.PlayScheduled(SimpleClock.AtNextHalf());
                            audioSource.SetScheduledEndTime(SimpleClock.AtNextBeat() + SimpleClock.AtNextHalf());
                            break;
                        case 3:
                            audioSource.PlayScheduled(SimpleClock.AtNextQuarter());
                            audioSource.SetScheduledEndTime(SimpleClock.AtNextQuarter() + SimpleClock.AtNextMeasure());
                            break;
                        case 4:
                            audioSource.PlayScheduled(SimpleClock.AtNextMeasure());
                            audioSource.SetScheduledEndTime(SimpleClock.AtNextMeasure() + SimpleClock.AtNextMeasure());
                            break;
                    }
                }
                break;

            case 2:
                if (!clipsSwitched)
                {
                    audioSource.clip = secondClips[Random.Range(0, 3)];
                    clipsSwitched = true;
                }

                if (!audioSource.isPlaying)
                {
                    //timeScale = Random.Range (0, 4);
                    switch (timeScale)
                    {
                        case 1:
                            audioSource.PlayScheduled(SimpleClock.AtNextEighth());
                            audioSource.SetScheduledEndTime(SimpleClock.AtNextHalf() + SimpleClock.AtNextBeat());
                            break;
                        case 2:
                            audioSource.PlayScheduled(SimpleClock.AtNextHalf());
                            audioSource.SetScheduledEndTime(SimpleClock.AtNextMeasure() + SimpleClock.AtNextHalf());
                            break;
                        case 3:
                            audioSource.PlayScheduled(SimpleClock.AtNextQuarter());
                            audioSource.SetScheduledEndTime(SimpleClock.AtNextQuarter() + SimpleClock.AtNextHalf());
                            break;
                        case 4:
                            audioSource.PlayScheduled(SimpleClock.AtNextMeasure());
                            audioSource.SetScheduledEndTime(SimpleClock.AtNextMeasure() + SimpleClock.AtNextMeasure());
                            break;
                    }

                }
                break;
            case 3:
                if (!clipsSwitched)
                {
                    audioSource.clip = secondClips[Random.Range(0, 3)];
                    clipsSwitched = true;
                }

                if (!audioSource.isPlaying)
                {
                    //timeScale = Random.Range (0, 4);
                    switch (timeScale)
                    {
                        case 1:
                            audioSource.PlayScheduled(SimpleClock.AtNextEighth());
                            audioSource.SetScheduledEndTime(SimpleClock.AtNextHalf() + SimpleClock.AtNextBeat());
                            break;
                        case 2:
                            audioSource.PlayScheduled(SimpleClock.AtNextHalf());
                            audioSource.SetScheduledEndTime(SimpleClock.AtNextMeasure() + SimpleClock.AtNextHalf());
                            break;
                        case 3:
                            audioSource.PlayScheduled(SimpleClock.AtNextQuarter());
                            audioSource.SetScheduledEndTime(SimpleClock.AtNextQuarter() + SimpleClock.AtNextHalf());
                            break;
                        case 4:
                            audioSource.PlayScheduled(SimpleClock.AtNextMeasure());
                            audioSource.SetScheduledEndTime(SimpleClock.AtNextMeasure() + SimpleClock.AtNextMeasure());
                            break;
                    }

                }
                break;
            case 4:
                audioSource.Stop();
                break;


                //audio.PlayScheduled (SimpleClock.AtNextEighth());
                /*	if (GetComponent<growPlants> ().growthNumber == 1) {
                    if (!playedAudio) {
                        audio.clip = clips [Random.Range (0, 1)];
                        playedAudio = true;
                    }
                    //print ("playing");
                    }
                    if (GetComponent<growPlants> ().growthNumber == 2) {
                    if (!playedAudio) {
                        audio.clip = clips [Random.Range (1, 2)];
                        playedAudio = true;
                    }
                    }
                    if (GetComponent<growPlants> ().growthNumber == 3) {
                    if (!playedAudio) {
                        audio.clip = clips [Random.Range (2, 3)];
                        playedAudio = true;
                    }
                    } else {
                    if (!playedAudio) {
                        audio.clip = null;
                        playedAudio = true;
                    }
                    }

                //}

                if (!audio.isPlaying) {
                    audio.Play ();
                }
                */
        }
    }
}
