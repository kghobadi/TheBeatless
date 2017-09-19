using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraMan : MonoBehaviour {

    GameObject player;
    Vector3 targetPosition;

    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player");
    }

    void Update () {
        transform.LookAt(player.transform);
        if (Input.GetMouseButton(1))
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;
            if (Physics.Raycast(ray, out hit))
            {
                targetPosition = hit.point;
                transform.LookAt(targetPosition);
            }
        }
	}
}
