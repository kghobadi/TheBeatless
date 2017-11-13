using UnityEngine;
using System.Collections;

public class Sun : MonoBehaviour
{

    public float rotationSpeed = 10;
    public Transform rotation;

    public Light sun;
    public bool dayPassed;

    bool setDayPassed;

    void Update()
    {
        //rotates sun around zero 
        transform.RotateAround(Vector3.zero, Vector3.right, rotationSpeed * Time.deltaTime);
        transform.LookAt(Vector3.zero);


        if (transform.position.y > 0f)
            setDayPassed = false;

        if (transform.position.y < 0f)
        {
            if (!setDayPassed)
            {
                dayPassed = true;
                setDayPassed = true;
            }
            else
            {
                dayPassed = false;
            }
        }

        Debug.Log(dayPassed);

        //if (transform.position.y < 0f && !setDayPassed)// && transform.position.y > -3f)
        //{
        //    dayPassed = true;
        //    setDayPassed = true;
        //}
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

