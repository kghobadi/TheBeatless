using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstPersonController : MonoBehaviour
{

    public float speed;
    public float sprintSpeed;
    public float scrollSpeed = 2.0f;
    CharacterController player;

    public bool isAwake;
    
    public bool isHoldingSeed;

    //public Animation pickAxe;
    //public AudioSource miner;
    //public AudioClip mining;

    //public ParticleSystem rockBits;


    float moveForwardBackward;
    float moveLeftRight;
    float moveUpDown;

    Vector3 targetPosition; // for point to click

    //public int rockCounter;
    //public bool IAmMining = false;


    void Start()
    {
        player = GetComponent<CharacterController>();

    }

    void Update()
    {
        //if(Input.GetKey(KeyCode.LeftShift)|| Input.GetKey(KeyCode.RightShift))
        //{
        //    speed = sprintSpeed;
        //}
        //else
        //{
        //    speed = 10f;
        //}
        moveForwardBackward = Input.GetAxis("Vertical") * speed;
        moveLeftRight = Input.GetAxis("Horizontal") * speed;
        moveUpDown = Input.GetAxis("Mouse ScrollWheel") * scrollSpeed;

        Vector3 movement = new Vector3(moveLeftRight, moveUpDown, moveForwardBackward);

        movement = transform.rotation * movement;
        player.Move(movement * Time.deltaTime);

        player.Move(new Vector3(0, -0.5f, 0));



    }


}
