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
        interactSprite = Resources.Load<Sprite>("CursorSprites/crosshairselected") ;
        clickSprite = Resources.Load<Sprite>("CursorSprites/crosshairclicked");
        Debug.Log(normalSprite);
        symbol.sprite = normalSprite;

        soundBoard = cammy.GetComponent<AudioSource>(); //assigns audio source
        interactable = true;

        playerControl = _player.GetComponent<FirstPersonController>();
    }
    
    void OnMouseEnter()
    {
		if (Vector3.Distance(transform.position, _player.transform.position) <= withinDistance && interactable && !playerControl.isHoldingAnimal)
        {
            cammy.GetComponent<camMouseLook>().sensitivityX = 1f;
            cammy.GetComponent<camMouseLook>().sensitivityY = 1f;
            symbol.sprite = interactSprite;
        }
    }

    void OnMouseExit()
    {
        symbol.sprite = normalSprite;
        cammy.GetComponent<camMouseLook>().sensitivityX = 3f;
        cammy.GetComponent<camMouseLook>().sensitivityY = 3f;
    }

    public virtual void handleClickSuccess()
    {
        symbol.sprite = clickSprite;
        Play();
        symbol.sprite = normalSprite;
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









