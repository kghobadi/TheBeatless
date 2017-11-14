using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Interactable : MonoBehaviour
{
    protected GameObject _player;
    protected GameObject cammy; // camera reference
    protected SpriteRenderer symbol; // 2d sprite renderer icon reference
    private Sprite normalSprite;
    private Sprite interactSprite;
    private Sprite clickSprite;

    //public Vector3 startScale;
    //public float scaleFactor;
    //public Material outlineShader;


    protected float withinDistance = 10f;
    protected float withinDistanceActive = 10f;

    protected AudioSource soundBoard;
    public AudioClip InteractSound;

    public bool interactable;

    protected FirstPersonController playerControl;

    public virtual void Start()
    {
        _player = GameObject.FindGameObjectWithTag("Player"); //searches for Player
        cammy = GameObject.FindGameObjectWithTag("MainCamera"); //searches for Camera
        symbol = GameObject.FindGameObjectWithTag("Symbol").GetComponent<SpriteRenderer>(); //searches for InteractSymbol

        //loads Cursor Sprites
        normalSprite = Resources.Load<Sprite>("CursorSprites/crosshair");
        interactSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");
        clickSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");
        //        Debug.Log(normalSprite);
        symbol.sprite = normalSprite;

        soundBoard = cammy.GetComponent<AudioSource>(); //assigns audio source

        playerControl = _player.GetComponent<FirstPersonController>();
        //startScale = transform.localScale;
    }

    void OnMouseEnter()
    {
        if (Vector3.Distance(transform.position, _player.transform.position) <= withinDistance && interactable)
        {
            cammy.GetComponent<camMouseLook>().sensitivityX = 1.5f;
            cammy.GetComponent<camMouseLook>().sensitivityY = 1.5f;
            symbol.sprite = interactSprite;
            //transform.localScale *= scaleFactor;

        }
    }

    void OnMouseExit()
    {
        if (interactable)
        {
            symbol.sprite = normalSprite;
            //cammy.GetComponent<camMouseLook>().sensitivityX = 2f;
            //cammy.GetComponent<camMouseLook>().sensitivityY = 2f;
            //transform.localScale = startScale;
        }
    }

    public virtual void handleClickSuccess()
    {
        symbol.sprite = clickSprite;
        Play();
        symbol.sprite = normalSprite;
        // transform.localScale = startScale;
    }



    void OnMouseDown()
    {
        if (Vector3.Distance(transform.position, _player.transform.position) <= withinDistanceActive && interactable)
        {
            handleClickSuccess();

        }

    }

    void Play()
    {
        soundBoard.PlayOneShot(InteractSound);
    }


}









