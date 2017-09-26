//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;
//
//[System.Serializable]
//public class AnimalTracks : Singleton<AnimalTracks>
//{
//	public Dictionary<AnimalSpecies, List<Recording>> tracksBySpecies = new Dictionary<AnimalSpecies, List<Recording>>();
//
//    public void AddTrackToSpecies(AnimalSpecies speciesName, List<Recording> trackToAdd)
//    {
//        tracksBySpecies[speciesName].Add(trackToAdd);
//    }
//
//    public void DeleteTrackFromSpecies(AnimalSpecies speciesName, List<Recording> trackToRemove)
//    {
//        tracksBySpecies[speciesName].Remove(trackToRemove);
//    }
//
//    public void AssignTrackToAnimal(GameObject animal, List<Recording> trackToAssign)
//    {
//        InputVCR recording = animal.GetComponent<InputVCR>();
//		recording.GetRecording() = trackToAssign;
//    }
//
//    // TODO: NEED SAVE FUNCTIONALITY
//    // TODO: NEED LOAD FUNCTIONALITY
//    // matt will send auto save at end of session and load at beginning of session. text him to remind him.
//}
//
