using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// Template for each Specie

public class Specie : MonoBehaviour
{
    public AnimalSpecies specieName;
    public Dictionary<string, AudioClip> audioSchema;

	string keyCodeString;

    public void Awake()
    {
        specieName = AnimalSpecies.DOG;
		audioSchema = new Dictionary<string, AudioClip>(){
            { "w", Resources.Load("Audio/" + specieName.ToString() + "/clip1.mp3", typeof(AudioClip)) as AudioClip}, // structure for loading all audio clips to Input Keys for species, DONT necessarily need KeyCode
            { "s", Resources.Load("Audio/" + specieName.ToString() + "/clip2.mp3", typeof(AudioClip)) as AudioClip}, // structure for loading all audio clips to Input Keys for species
            { "d", Resources.Load("Audio/" + specieName.ToString() + "/clip3.mp3", typeof(AudioClip)) as AudioClip}, // structure for loading all audio clips to Input Keys for species
            { "a", Resources.Load("Audio/" + specieName.ToString() + "/clip4.mp3", typeof(AudioClip)) as AudioClip}, // structure for loading all audio clips to Input Keys for species
        };

        specieName = AnimalSpecies.FROG;
        audioSchema = new Dictionary<string, AudioClip>(){
            { "w", Resources.Load("Audio/" + specieName.ToString() + "/clip1.mp3", typeof(AudioClip)) as AudioClip}, 
            { "s", Resources.Load("Audio/" + specieName.ToString() + "/clip2.mp3", typeof(AudioClip)) as AudioClip}, 
            { "d", Resources.Load("Audio/" + specieName.ToString() + "/clip3.mp3", typeof(AudioClip)) as AudioClip}, 
            { "a", Resources.Load("Audio/" + specieName.ToString() + "/clip4.mp3", typeof(AudioClip)) as AudioClip}, 
        };

        specieName = AnimalSpecies.DONKEY;
        audioSchema = new Dictionary<string, AudioClip>(){
            { "w", Resources.Load("Audio/" + specieName.ToString() + "/clip1.mp3", typeof(AudioClip)) as AudioClip}, 
            { "s", Resources.Load("Audio/" + specieName.ToString() + "/clip2.mp3", typeof(AudioClip)) as AudioClip}, 
            { "d", Resources.Load("Audio/" + specieName.ToString() + "/clip3.mp3", typeof(AudioClip)) as AudioClip}, 
            { "a", Resources.Load("Audio/" + specieName.ToString() + "/clip4.mp3", typeof(AudioClip)) as AudioClip}, 
        };
    }
}

//Enum list of Species names 
public enum AnimalSpecies
{
    FROG, DOG, DONKEY, 
}

