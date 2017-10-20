//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;

//public class diffVisFeedback : MonoBehaviour {
//	public float speed = 10f;
//	public float originalSpeed = 1f;
//	public Vector3 target;
//	private ParticleSystem editParts;
//	private Material editMatColor;

//	private bool clipChanged = false;

//    //private Specie specie;
//    InputVCR vcr;
//    public AudioSource playSounds, playSounds2, playSounds3, playSounds4;

//    AnimalLife animalAge;
    

//    void Awake () {
//		editParts = GetComponent<ParticleSystem>();
//		editMatColor = GetComponent<Renderer>().material;
//        specie = GetComponent<Specie>();
//        vcr = GetComponent<InputVCR>();
//        animalAge = GetComponentInParent<AnimalLife>();

//        playSounds = gameObject.AddComponent<AudioSource>();
//        playSounds2 = gameObject.AddComponent<AudioSource>();
//        playSounds3 = gameObject.AddComponent<AudioSource>();
//        playSounds4 = gameObject.AddComponent<AudioSource>();

//		playSounds.spatialBlend = 1;
//		playSounds2.spatialBlend = 1;
//		playSounds3.spatialBlend = 1;
//		playSounds4.spatialBlend = 1;


//        playSounds.playOnAwake = false;
//        playSounds2.playOnAwake = false;
//        playSounds3.playOnAwake = false;
//        playSounds4.playOnAwake = false;      
//    }

//    void Start()
//    {
//        playSounds.clip = specie.audioSchema["w"];
//        playSounds2.clip = specie.audioSchema["s"];
//        playSounds3.clip = specie.audioSchema["d"];
//        playSounds4.clip = specie.audioSchema["a"];
//    }
//    void Update () {

//        if (vcr.GetKey("w"))
//        {
//            speed = Mathf.Lerp(speed, (Camera.main.WorldToScreenPoint(vcr.mousePosition).y / Screen.height), Time.deltaTime);
//            target = new Vector3((Camera.main.WorldToScreenPoint(vcr.mousePosition).x / Screen.width) / 5, (Camera.main.WorldToScreenPoint(vcr.mousePosition).y / Screen.height) / 5, transform.localScale.z);
//            transform.localScale = Vector3.Lerp(transform.localScale, target, Time.deltaTime);
//            //transform.localEulerAngles = new Vector3 ((Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width) * 10, (Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width) * 10, (Camera.main.WorldToScreenPoint (Input.mousePosition).x / Screen.width) * 10);



//            //sets audiosource loop setting to true because the key is held down
//            playSounds.loop = true;
//            //checks to make sure only one instance of the sound is playing at once
//            if (!playSounds.isPlaying)
//            {
//                //plays sound
//                playSounds.Play();
//                Debug.Log("music playing");
//            }

//        }
//        else
//        {
//            transform.localScale = Vector3.Lerp(transform.localScale, new Vector3(1, 1, 1), Time.deltaTime);
//            speed = Mathf.Lerp(speed, originalSpeed, Time.deltaTime);

//            //if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
//            playSounds.loop = false;
//            playSounds.Stop();
//        }



//        if (vcr.GetKey("a"))
//        {

//            Color changeColor = editMatColor.color;

//            changeColor = Color.HSVToRGB((Camera.main.WorldToScreenPoint(vcr.mousePosition).x / Screen.width) / 50, (Camera.main.WorldToScreenPoint(vcr.mousePosition).y / Screen.height) / 50, .7f);

//            editMatColor.color = changeColor;

//            //sets audiosource loop setting to true because the key is held down
//            playSounds4.loop = true;
//            //checks to make sure only one instance of the sound is playing at once
//            if (!playSounds4.isPlaying)
//            {
//                //plays sound
//                playSounds4.Play();
//            }

//        }
//        else
//        {
//            Color changeColor = editMatColor.color;

//            changeColor = Color.Lerp(changeColor, Color.white, Time.deltaTime);

//            editMatColor.color = changeColor;

//            //if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
//            playSounds4.loop = false;

//            playSounds4.Stop();
//        }


//        if (vcr.GetKey("s"))
//        {
//            var main = editParts.noise;
//            main.frequency = Camera.main.WorldToScreenPoint(vcr.mousePosition).y / Screen.height / 18;

//            main.strength = Camera.main.WorldToScreenPoint(vcr.mousePosition).x / Screen.width / 18;
//            //sets audiosource loop setting to true because the key is held down
//            playSounds2.loop = true;
//            //checks to make sure only one instance of the sound is playing at once
//            if (!playSounds2.isPlaying)
//            {
//                //plays sound
//                playSounds2.Play();
//            }
//        }
//        else
//        {
//            //if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
//            playSounds2.loop = false;
//            playSounds2.Stop();
//        }





//        if (vcr.GetKey("d"))
//        {
//            var main = editParts.emission;
//            main.rateOverTime = (Camera.main.WorldToScreenPoint(vcr.mousePosition).y / Screen.height);

//            var main2 = editParts.main;
//            main2.startSpeed = (Camera.main.WorldToScreenPoint(vcr.mousePosition).x / Screen.width) / 5;

//            //sets audiosource loop setting to true because the key is held down
//            playSounds3.loop = true;
//            //checks to make sure only one instance of the sound is playing at once
//            if (!playSounds3.isPlaying)
//            {
//                //plays sound
//                playSounds3.Play();
//            }

//        }
//        else
//        {
//            var main = editParts.emission;
//            main.rateOverTime = 0;

//            var main2 = editParts.main;
//            main2.startSpeed = 0;

//            //if keys aren't pressed or keys pressed opposite, sets clip to none and looping to false
//            playSounds3.loop = false;
//            playSounds3.Stop();
//        }



//    }

//}
