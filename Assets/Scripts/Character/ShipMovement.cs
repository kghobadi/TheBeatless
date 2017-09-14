using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShipMovement : MonoBehaviour
{
    Rigidbody ship;

    const float CLICK_Z_POSITION = 0;

    public float speed = 10f;

    public ParticleSystem engineFire;

    private Vector3 targetPosition;
    private bool isMoving;
    

    //Freeze Camera rotations and find a way to get point n click movement working 

	void Start () {
        ship = GetComponent<Rigidbody>();

        targetPosition = transform.position;
        isMoving = false;
        engineFire.Pause();
	   
	}


    void Update() {
        if (Input.GetMouseButton(0))
        {
            SetTargetPosition();
        }

        if (isMoving)
        {
            MovePlayer();
            
        }
        
    }

    void SetTargetPosition()
    {
        Vector3 p = new Vector3();
        Camera c = Camera.main;
        Vector2 mousePos = new Vector2();

        // Get the mouse position from Event.
        // Note that the y position from Event is inverted.
        mousePos.x = Input.mousePosition.x;
        mousePos.y = Input.mousePosition.y;

        p = c.ScreenToWorldPoint(new Vector3(mousePos.x, mousePos.y, c.nearClipPlane));
        p.z = CLICK_Z_POSITION;

        Debug.Log(p);

        targetPosition = p;

        isMoving = true;

    }

    void MovePlayer()
    {
        engineFire.Play();
        transform.LookAt(targetPosition);
        transform.position = Vector3.MoveTowards(transform.position, targetPosition, speed * Time.deltaTime);
        

        if(Vector3.Distance(transform.position, targetPosition) < 0.01f)
        {
            transform.position = targetPosition;
            isMoving = false;
            engineFire.Stop();
        }

        Debug.DrawLine(transform.position, targetPosition, Color.red);

    }

}
