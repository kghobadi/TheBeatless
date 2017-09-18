using UnityEngine;
using System.Collections;

public class Sun : MonoBehaviour {

    public float rotationSpeed = 10;
    public Transform rotation;

    public Light sun;
    
	
	void Update () {
        //rotates sun around zero 
        transform.RotateAround(Vector3.zero, Vector3.right, rotationSpeed * Time.deltaTime);
        transform.LookAt(Vector3.zero);

        //deals with intensity of sun over time
        float intensity = 0.01f * Time.deltaTime;
        if (transform.rotation.x > 0)
        {
            sun.intensity += intensity;
        }
        if (transform.rotation.x < 0)
        {
            sun.intensity -= intensity;
        }


    }
}
