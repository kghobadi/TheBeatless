using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class PathMaker : MonoBehaviour
{

    public Transform spherePrefab;
    Transform pathmakerSpherePrefab;
    pathMakerManager pmMan;






    //public Slider duplicatorSlider;




    // Use this for initialization
    void Start()
    {

        //duplicatorSlider = GameObject.Find("duplicatorSlider").GetComponent<Slider>();
        pathmakerSpherePrefab = this.transform;
        pmMan = transform.parent.gameObject.GetComponent<pathMakerManager>();
    }

    // Update is called once per frame
    void Update()
    {

        //Debug.Log(globalSphereCount);
        float randNum = Random.Range(0.00f, 1.00f);

        if (randNum < 0.25f)
        {

            transform.Rotate(Random.Range(0f, 50), 0f, Random.Range(0f, 50));

        }
        else if (randNum > 0.25f && randNum < 0.5f)
        {

            transform.Rotate(Random.Range(-50, 0), 0f, Random.Range(-50, 0));

        }
        else if (randNum > 0.995f && randNum < 1.00f)
        {

            Transform newPM = Instantiate(pathmakerSpherePrefab, transform.position, transform.rotation, transform.parent);

        }

        Instantiate(spherePrefab, transform.position, transform.rotation, transform.parent);
        transform.Translate(0f, 0.01f, 0f);
        transform.position += Vector3.up * Time.deltaTime * 0.1f;//this should actually be telling it to rotate towards facing up (small value so there's enough variation)
        //transform.rotation.SetLookRotation(Vector3.up);
      
        pmMan.globalSphereCount++;

        //pmMan.colorFloat += 0.004f;

        if (pmMan.globalSphereCount > pmMan.maxSphereSize)
        {

            Destroy(gameObject);

        }



    }
}
