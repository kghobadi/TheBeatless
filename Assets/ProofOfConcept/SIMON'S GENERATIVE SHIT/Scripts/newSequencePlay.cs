﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using TGS;

public class newSequencePlay : MonoBehaviour {

		public AudioHelm.Sequencer sequencer;

		public bool changedSequence = false;

		public bool isLeader = false;
		public bool isFollower = false;

		public int octave = 1;

		public AudioMixerGroup mixer;

		public int lastNote;

		public int note;
		public int start, newStart;
		int end;
		public int species;

		public List<int> currentKey;

		public GameObject farmManager;

		NewPlantLife life;

		private GameObject bed;
		private Bed sleepScript;

		TerrainGridSystem tgs;

		public int column;
		public int row;

		


		//public int startScale = 8;
		//public int startMultiplier = 8;

		public int endScale = 1;
		//public int endEnd = 4;


		void Awake()
		{

		//sequencer.enabled = false;

			tgs = TerrainGridSystem.instance;
			//mixer = Instantiate ();
			farmManager = GameObject.Find("farmManagerNew");
			//octave = farmManager.GetComponent<assignKey>().octave;
			life = GetComponent<NewPlantLife>();
		//sequencer = GameObject.Find ("Sequencer1").GetComponent<AudioHelm.Sequencer> ();
			//note = Random.Range (0, 6);

			bed = GameObject.FindGameObjectWithTag("Bed");
			sleepScript = bed.GetComponent<Bed>();

		Cell cell = tgs.CellGetAtPosition (transform.position, true);
		row = cell.row;
		column = cell.column;

		note = cell.row;
		newStart = cell.column * 8;

		/*	if (Random.Range(0, 3) == 1)
			{
				note = 0;
				isLeader = true;
				start = Random.Range(0, startScale);
			}
			else
			{
				note = Random.Range(0, 6);
			}

			changedSequence = false; */
		}

		// Update is called once per frame
		void Update()
		{

		if (life.ageCounter == 0) {
			sequencer.syncTime = 0;
		}

		print (sequencer.GetSequencerPosition ());

		//Vector3 pos = transform.position;
		//Cell cell = tgs.CellGetAtPosition (pos);
		//int row = cell.row;
		//int column = cell.column;

			if (sleepScript.dayPassed)
			{
			sequencer.enabled = true;
			//changedSequence = false;
				changedSequence = false;
			}

		if (!changedSequence) {
			if (life.ageCounter == 1) {
				changeSequence1 ();
				changedSequence = true;
			} else if (life.ageCounter == 2) {
				changeSequence2 ();
				changedSequence = true;
			} else if (life.ageCounter == 3) {
				changeSequence3 ();
				changedSequence = true;
			}

		}

			
		}


		void changeSequence1()
		{
			//int change = Random.Range (0, 1);
			// int note = Random.Range (0,6);
			//int newNote;
			//int start = Random.Range (0, 32);
			//int end = start + Random.Range (1, 3);
			float velocity = Random.Range(0.4f, 1f);
			//if (change == 1) {
			sequencer.Clear();
			/*switch (note) {
        case 1:
            newNote = 61;
            break;
        case 2:
            newNote = 63;
            break;
        case 3:
            newNote = 65;
            break;
        case 4:
            newNote = 66;
            break;
        case 5:
            newNote = 68;
            break;
        case 6: 
            newNote = 70;
            break;
        case 7:
            newNote = 71;
            break;

        default:
            newNote = 61;
            break;
        } */
		sequencer.AddNote(farmManager.GetComponent<assignKey>().currentList[note] + (12 * (octave + 2)), newStart, newStart + endScale, velocity);
			Debug.Log("Set Note to" + note);
			Debug.Log(farmManager.GetComponent<assignKey>().currentList[note]);
			sequencer.StartOnNextCycle ();

			//}		//lastNote = note;

		}

		void changeSequence2()
		{
			//int note = Random.Range (0, 6);
			//int change = Random.Range(0, 2);
			//int newNote;

			float velocity = Random.Range(0.4f, 1f);
			//if (change == 1) {
			sequencer.Clear();
			/*switch (note) {
        case 1:
            newNote = 49;
            break;
        case 2:
            newNote = 51;
            break;
        case 3:
            newNote = 53;
            break;
        case 4:
            newNote = 54;
            break;
        case 5:
            newNote = 56;
            break;
        case 6: 
            newNote = 58;
            break;
        case 7:
            newNote = 59;
            break;

        default:
            newNote = 49;
            break;
        } */
		sequencer.AddNote(farmManager.GetComponent<assignKey>().currentList[note] + (12 * (octave + 1)), newStart, newStart + endScale, velocity);
			Debug.Log("current note :" + note);
			Debug.Log(farmManager.GetComponent<assignKey>().currentList[note]);
			sequencer.StartOnNextCycle ();
			//}
			//sequencer.AddNote (88, 12, 13, 1);
		}

		void changeSequence3()
		{
			//int change = Random.Range(0, 2);
			//int note = Random.Range (0, 6);
		//	int newNote;
			//int start = Random.Range (0, 16);
			//int end = start + Random.Range (1, 3);
			float velocity = Random.Range(0.4f, 1f);
			//if (change == 1) {
			sequencer.Clear();

			/*switch (note) {
        case 1:
            newNote = 37;
            break;
        case 2:
            newNote = 39;
            break;
        case 3:
            newNote = 41;
            break;
        case 4:
            newNote = 42;
            break;
        case 5:
            newNote = 44;
            break;
        case 6: 
            newNote = 46;
            break;
        case 7:
            newNote = 47;
            break;

        default:
            newNote = 37;
            break;
        } */
		sequencer.AddNote(farmManager.GetComponent<assignKey>().currentList[note] + (12 * octave), newStart, newStart + endScale, velocity);
		sequencer.StartOnNextCycle ();
			//}

		}


	}
