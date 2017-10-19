using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// Template for each Specie

public class Specie : MonoBehaviour
{
    public AnimalSpecies specieName;
    public PlantSpecies specieType;
    public Dictionary<string, AudioClip> audioSchema;

    string keyCodeString;

    public void Awake()
    {
        //Debug.Log("HI HI HI HI HI HI");
        audioSchema = new Dictionary<string, AudioClip>(){
            { "w", (AudioClip) Resources.Load("Audio/" + specieName.ToString() + "/clip1")}, // structure for loading all audio clips to Input Keys for species, DONT necessarily need KeyCode
            { "s", (AudioClip) Resources.Load("Audio/" + specieName.ToString() + "/clip2")}, // structure for loading all audio clips to Input Keys for species
            { "d", (AudioClip) Resources.Load("Audio/" + specieName.ToString() + "/clip3")}, // structure for loading all audio clips to Input Keys for species
            { "a", (AudioClip) Resources.Load("Audio/" + specieName.ToString() + "/clip4")}, // structure for loading all audio clips to Input Keys for species
        };

        SimpleClock.ThirtySecond += OnThirtySecond;
    }

    private void OnDestroy()
    {
        SimpleClock.ThirtySecond -= OnThirtySecond;
    }

    void OnThirtySecond(BeatArgs e)
    {
        if (e.TickMask[TickValue.SixteenthTriplet])
        {
            //...
        }
        if(e.TickMask[TickValue.Measure])
        {
            //...
        }

    }

    //Enum list of Species names 
    public enum AnimalSpecies
    {
        FROG, DOG, DONKEY, ROBIN,
    }

    public enum PlantSpecies
    {
        OAK, WALNUT, APPLE,
    }


    //public virtual void ThirtySecond() { }
    //public virtual void Sixteenth() { }
    //public virtual void Eighth() { }
    //public virtual void Beat() { }
    //public virtual void Half() { }
    //public virtual void Measure() { }

    //write functions to receive the clock messages in each species

    //Make plant species

    // This script needs to be associated with a Fruit/plant species so animal knows what it eats


}

