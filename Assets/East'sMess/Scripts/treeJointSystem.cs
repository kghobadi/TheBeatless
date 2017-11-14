using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class treeJointSystem : MonoBehaviour {
	
	public List<Transform> treeJoints = new List<Transform>();
	private bool hasChild = true;
	private Transform currentTransform;
	private List<Vector3> origPos = new List<Vector3>();
	private List<Vector3> origAng = new List<Vector3>();
	private List<Vector3> origScl = new List<Vector3>();
	private Vector3 randomTwist;

	// Use this for initialization
	void Start () {
		currentTransform = transform;
		randomTwist = 10 * Random.onUnitSphere;

		while (hasChild) {
			if(currentTransform.childCount == 1){
				treeJoints.Add (currentTransform);
				currentTransform = currentTransform.GetChild (0);
			} else {
				treeJoints.Add(currentTransform);
				hasChild = false;
			}
		}

		for (int i = 0; i < treeJoints.Count; i++) {
			origPos.Add(treeJoints [i].position);
			origAng.Add (treeJoints [i].localEulerAngles);
			origScl.Add (treeJoints [i].localScale);
		}

		for (int i = 0; i < treeJoints.Count; i++) {
			treeJoints [i].position = new Vector3 (origPos[i].x + Random.Range(-.25f, .25f), origPos[i].y, origPos[i].z + Random.Range(-.25f, .25f));
			//treeJoints [i].localEulerAngles = new Vector3 (origAng[i].x + Random.Range(-15f, 15f), origAng[i].y + Random.Range(-15f, 15f), origAng[i].z + Random.Range(-15f, 15f));
			//treeJoints [i].localScale = new Vector3 (origScl[i].x * Random.Range(.5f, 1.5f), origScl[i].y * Random.Range(.5f, 1.5f), origScl[i].z * Random.Range(.5f, 1.5f));
		}


		
	}
	
	// Update is called once per frame
	void Update () {
       /* if (playing)
            randomTwist = 10 * Random.onUnitSphere;
        else
            randomTwist = Vector3.zero;
            */
		for (int i = 0; i < treeJoints.Count; i++) {
			
			treeJoints [i].localEulerAngles = new Vector3 (origAng[i].x + Mathf.Sin(Time.time / randomTwist.x), origAng[i].y - Mathf.Sin(Time.time/ randomTwist.y), origAng[i].z + Mathf.Sin(Time.time/ randomTwist.z));

		}


	}
}
