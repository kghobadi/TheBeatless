using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RockAudio : MonoBehaviour {

    AudioSource audioSource;

	void Start () {
        audioSource = GetComponent<AudioSource>();

        if (!audioSource.isPlaying)
        {
            audioSource.Play();
            audioSource.loop = true;
        }
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
