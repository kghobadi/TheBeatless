using UnityEngine;
using System.Collections;

public class Sun : MonoBehaviour {

    public float rotationSpeed = 10;
    public Transform rotation;

    public Light sun;
    public bool dayPassed;

   
	
	void Update () {
        //rotates sun around zero 
        transform.RotateAround(Vector3.zero, Vector3.right, rotationSpeed * Time.deltaTime);
        transform.LookAt(Vector3.zero);

        if(transform.position.y < 0.1f && transform.position.y > -0.1f)
        {
            dayPassed = true;
            Debug.Log(dayPassed);
        }
        else
        {
            dayPassed = false;
        }

        //deals with intensity of sun over time
        //float intensity = 0.01f * Time.deltaTime;
        //if (transform.rotation.x > 0)
        //{
        //    sun.intensity += intensity;
        //}
        //if (transform.rotation.x < 0)
        //{
        //    sun.intensity -= intensity;
        }


    }

