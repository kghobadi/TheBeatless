using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// Template for each Specie

public class Specie : MonoBehaviour
{
    public AnimalSpecies specieName;
    public Dictionary<KeyCode, AudioClip> audioSchema;

    public void Awake()
    {
        specieName = AnimalSpecies.DOG;
        audioSchema = new Dictionary<KeyCode, AudioClip>(){
            { KeyCode.W, Resources.Load("Audio/" + specieName.ToString() + "/clip1.mp3", typeof(AudioClip)) as AudioClip}, // structure for loading all audio clips to Input Keys for species, DONT necessarily need KeyCode
            { KeyCode.A, Resources.Load("Audio/" + specieName.ToString() + "/clip2.mp3", typeof(AudioClip)) as AudioClip}, // structure for loading all audio clips to Input Keys for species
            { KeyCode.S, Resources.Load("Audio/" + specieName.ToString() + "/clip3.mp3", typeof(AudioClip)) as AudioClip}, // structure for loading all audio clips to Input Keys for species
            { KeyCode.D, Resources.Load("Audio/" + specieName.ToString() + "/clip4.mp3", typeof(AudioClip)) as AudioClip}, // structure for loading all audio clips to Input Keys for species
        };
    }
}

//Enum list of Species names 
public enum AnimalSpecies
{
    FROG, CAT, DOG, DONKEY, HORSE, PIG, WALLABY, SEA_URCHIN,
}

