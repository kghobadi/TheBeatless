using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class AnimalTracks : Singleton<AnimalTracks>
{
    public Dictionary<AnimalSpecies, List<List<Recording.RecordingFrame>>> tracksBySpecies = new Dictionary<AnimalSpecies, List<List<Recording.RecordingFrame>>>();

    public void AddTrackToSpecies(AnimalSpecies speciesName, List<Recording.RecordingFrame> trackToAdd)
    {
        tracksBySpecies[speciesName].Add(trackToAdd);
    }

    public void DeleteTrackFromSpecies(AnimalSpecies speciesName, List<Recording.RecordingFrame> trackToRemove)
    {
        tracksBySpecies[speciesName].Remove(trackToRemove);
    }

    public void AssignTrackToAnimal(GameObject animal, List<Recording.RecordingFrame> trackToAssign)
    {
        Recording recording = animal.GetComponent<Recording>();
        recording.frames = trackToAssign;
    }

    // TODO: NEED SAVE FUNCTIONALITY
    // TODO: NEED LOAD FUNCTIONALITY
    // matt will send auto save at end of session and load at beginning of session. text him to remind him.
}

