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
        
        audioSchema = new Dictionary<string, AudioClip>(){
            { "w", Resources.Load("Audio/" + specieName.ToString() + "/clip1.mp3", typeof(AudioClip)) as AudioClip}, // structure for loading all audio clips to Input Keys for species, DONT necessarily need KeyCode
            { "s", Resources.Load("Audio/" + specieName.ToString() + "/clip2.mp3", typeof(AudioClip)) as AudioClip}, // structure for loading all audio clips to Input Keys for species
            { "d", Resources.Load("Audio/" + specieName.ToString() + "/clip3.mp3", typeof(AudioClip)) as AudioClip}, // structure for loading all audio clips to Input Keys for species
            { "a", Resources.Load("Audio/" + specieName.ToString() + "/clip4.mp3", typeof(AudioClip)) as AudioClip}, // structure for loading all audio clips to Input Keys for species
        };
    }

    //Enum list of Species names 
    public enum AnimalSpecies
    {
        FROG, DOG, DONKEY, ROBIN,
    }
}

