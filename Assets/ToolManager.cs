using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ToolManager : MonoBehaviour
{

    public GameObject water, ax;
    public bool pickedNew;
    public GameObject objectHeld;

    GameObject _player;
    FirstPersonController fpc;

    //Could add seeds to ToolManager and NewPickUpTool pretty easily, just would need to set the seed obj in ToolMan to false whenever you use ones

    void Start()
    {
        _player = GameObject.FindGameObjectWithTag("Player");
        fpc = _player.GetComponent<FirstPersonController>();
    }

    void Update()
    {
     
        if (Input.GetKeyDown(KeyCode.Alpha1) && ax != null)
        {
            if (objectHeld != ax)
            {
                putAwayEverything();
                equipAx();
            }
            else if (objectHeld == ax)
            {
                putAwayAx();
            }
        }

        if (Input.GetKeyDown(KeyCode.Alpha2) && water != null)
        {
            if (objectHeld != water)
            {
                putAwayEverything();
                equipWater();

            }
            else if (objectHeld == water)
            {
                putAwayWater();
            }
        }


    }

   public void equipWater()
    {
        water.SetActive(true);
        objectHeld = water;
    }
    public void putAwayWater()
    {
        water.SetActive(false);
        objectHeld = null;
    }

    public void equipAx()
    {
        ax.SetActive(true);
        objectHeld = ax;
    }
    public void putAwayAx()
    {
        ax.SetActive(false);
        objectHeld = null;
    }

    public void putAwayEverything()
    {
        if (water != null)
        {
            if (objectHeld == water)
                putAwayWater();
        }
        if(ax != null)
        {
            if(objectHeld == ax)
            {
                putAwayAx();
            }
        }

    }
}
