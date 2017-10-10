using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrowingInstrument : MonoBehaviour {
	public float speed = 10f;
	public float originalSpeed = 1f;
	public Vector3 target;
	private ParticleSystem editParts;
	private Material editMatColor;

	private bool clipChanged, comboKeyPlaying = false;

    private Specie specie;
    InputVCR vcr;
    public AudioSource playSounds, playSounds2, playSounds3, playSounds4, playSoundsComb;
	public AudioClip clip1, clip2, clip3, clip4, comb1, comb2, comb3;

    AnimalLife animalAge;
    

    void Awake () {
		editParts = GetComponent<ParticleSystem>();
		editMatColor = GetComponent<Renderer>().material;
        specie = GetComponent<Specie>();
        vcr = GetComponent<InputVCR>();
        animalAge = GetComponentInParent<AnimalLife>();

        playSounds = gameObject.AddComponent<AudioSource>();
        playSounds2 = gameObject.AddComponent<AudioSource>();
        playSounds3 = gameObject.AddComponent<AudioSource>();
        playSounds4 = gameObject.AddComponent<AudioSource>();
		if (gameObject.tag == "CapCap") {
			playSoundsComb = gameObject.AddComponent<AudioSource> ();
			playSoundsComb.playOnAwake = false;
			playSoundsComb.clip = comb1;
			playSoundsComb.playOnAwake = false;
		}

        playSounds.playOnAwake = false;
        playSounds2.playOnAwake = false;
        playSounds3.playOnAwake = false;
        playSounds4.playOnAwake = false;


        playSounds.clip = clip1;
        playSounds2.clip = clip2;
        playSounds3.clip = clip3;
        playSounds4.clip = clip4;

        
        
    }
	
	void Update () {
        

        if (animalAge.isBaby)
        {
            BasicInstrument();
        }

        if (animalAge.isAdult)
        {
            FluteComboKeys();
			
        //    //controller grows and we accept more keys
        }

        //if (animalAge.isOld)
        //{
        //    //controller grows/changes and we accept more/less keys
        //}
        //if (animalAge.isDead)
        //{
        //    //animal is dead, and we either loop some silent reverberations or let it seep into silence
        //}

        



    }

    public void BasicInstrument()
    {
        if (!comboKeyPlaying)
        {
            if (vcr.GetKey("w"))
            {


                //sets audiosource loop setting to true because the key is held down
                playSounds.loop = true;
                //checks to make sure only one instance of the sound is playing at once
                if (!playSounds.isPlaying)
                {
                    //plays sound
                    playSounds.Play();
                    Debug.Log("music playing");
                }

            }
            else
            {


                //if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
                playSounds.loop = false;
                playSounds.Stop();
            }



            if (vcr.GetKey("a"))
            {


                //sets audiosource loop setting to true because the key is held down
                playSounds4.loop = true;
                //checks to make sure only one instance of the sound is playing at once
                if (!playSounds4.isPlaying)
                {
                    //plays sound
                    playSounds4.Play();
                }

            }
            else
            {


                //if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
                playSounds4.loop = false;

                playSounds4.Stop();
            }


            if (vcr.GetKey("s"))
            {

                //sets audiosource loop setting to true because the key is held down
                playSounds2.loop = true;
                //checks to make sure only one instance of the sound is playing at once
                if (!playSounds2.isPlaying)
                {
                    //plays sound
                    playSounds2.Play();
                }
            }
            else
            {
                //if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
                playSounds2.loop = false;
                playSounds2.Stop();
            }





            if (vcr.GetKey("d"))
            {


                //sets audiosource loop setting to true because the key is held down
                playSounds3.loop = true;
                //checks to make sure only one instance of the sound is playing at once
                if (!playSounds3.isPlaying)
                {
                    //plays sound
                    playSounds3.Play();
                }

            }
            else
            {


                //if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
                playSounds3.loop = false;
                playSounds3.Stop();
            }
        }
        
    }
    public void FluteComboKeys()
    {
        BasicInstrument();
        if (gameObject.name == "CapCap")
        {
            if (vcr.GetKey("w") && vcr.GetKey("a"))
            {
                playSoundsComb.loop = true;
                if (!clipChanged)
                {
                    playSoundsComb.clip = comb1;
                    clipChanged = true;
                }
                if (!playSoundsComb.isPlaying)
                {
                    playSoundsComb.Play();
                }
                comboKeyPlaying = true;
            }
            else if (vcr.GetKey("w") && vcr.GetKey("d"))
            {
                playSoundsComb.loop = true;
                if (!clipChanged)
                {
                    playSoundsComb.clip = comb2;
                    clipChanged = true;
                }
                playSoundsComb.Play();
                comboKeyPlaying = true;
            }

            else if (vcr.GetKey("s") && vcr.GetKey("a") || vcr.GetKey("d"))
            {
                playSoundsComb.loop = true;
                if (!clipChanged)
                {
                    playSoundsComb.clip = comb3;
                    clipChanged = true;
                }
                playSoundsComb.Play();
                comboKeyPlaying = true;
            }
            else
            {
                clipChanged = false;
                playSoundsComb.Stop();
                comboKeyPlaying = false;
            }
        }
    }


}
