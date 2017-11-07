using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace TGS
{
    public class AnimalAI : MonoBehaviour
    {
        public enum BigStates
        {
            EAT,
            SLEEP,
            SEARCHFORANIMAL,
            PICKGOAL,
            NEARPLAYER
        }
        public BigStates bigStates;


        enum State
        {
            MOVING,
            MOVESELECT,
            SEARCHWORLD,
            IDLE


        }
        State state;
        TerrainGridSystem tgs;
        List<int> moveList;
        short moveCounter = 0;

        //Stats set in editor or in start
        public float hungerModifier;
        public float socialModifier;
        public float sleepModifier;

        //Current reward from a Met Goal
        float goalReward;

        //Goal Meters
        float hunger;
        float social;
        float sleep;

        public float interactDistance;
        public int minSleep, maxSleep;

        public bool isInSleepState, isInSocialState, isInEatState;

        //Decision Range for Picking goal
        float totalMeter;
        float hungerPercentage;
        float socialPercentage;
        float sleepPercentage;

        float chanceToAwaken;
        bool isSleeping;

        bool goalSwitched;
        bool goalFound;
        GameObject goalObject;

        //var for animals Reward for interaction
        public float socialReward;

        //Neighboring Cells
        public List<Cell> neighbors = new List<Cell>();
        public List<int> neighborIndexes = new List<int>();

        //Memory Dictionary of Cells & Success Rates
        public Dictionary<Cell, int> memoryBankHunger;
        public Dictionary<Cell, int> memoryBankSleep;
        public Dictionary<Cell, int> memoryBankSocial;

        // use these strings to indicate Type of gameObject to search for
        public string fruit;
        public string animal;
        public string nest;

        public GameObject[] nestObject;

        public float moveSpeed;

        //Where will it go next? 
        Cell nextCell;
        int highestSuccess;

        //Vision Range
        public float rayDistance = 50f;

        private GameObject _player;

        public Cell rendezvousCell;

        //Animations
        //sleep
        //wake up
        //eat
        //walk
        //Idle
        //Interact with animal

        //could add memory banks for other animals and fruit types


        // Use this for initialization
        void Start()
        {
            tgs = TerrainGridSystem.instance;
            state = State.MOVESELECT;
            bigStates = BigStates.PICKGOAL;

            //Assign Stats 
            hungerModifier += Random.Range(0, .3f);
            socialModifier += Random.Range(0, .3f);
            sleepModifier += Random.Range(0, .3f);

            nestObject = GameObject.FindGameObjectsWithTag("Nest"); // add naming convention of + ___ specie name

            //Zero Meters
            hunger = 0;
            social = 0;
            sleep = 0;

            _player = GameObject.FindGameObjectWithTag("Player");
            //chanceToAwaken = 10;


        }

        // Update is called once per frame
        void Update()
        {
            Debug.Log(state);
            //if(nearAnimal == true){
            // social meter decreases over time

            //Update neighboring cells with for() loop

            //Always run this
            EvaluateConsiderations();

            switch (bigStates)
            {
                case BigStates.PICKGOAL:

                    goalFound = false;
                    goalReward = 0;
                    if (Vector3.Distance(transform.position, _player.transform.position) < interactDistance)
                    {
                        bigStates = BigStates.NEARPLAYER;
                        state = State.IDLE;
                    }
                    Random.InitState(System.DateTime.Now.Millisecond);
                    float decider = Random.Range(0f, 100f);
                    if (decider < hungerPercentage)
                    {
                        bigStates = BigStates.EAT;
                        state = State.SEARCHWORLD;
                        GetComponent<MeshRenderer>().material.color = Color.red;
                    }
                    if (decider >= hungerPercentage && decider < sleepPercentage)
                    {
                        GetComponent<MeshRenderer>().material.color = Color.blue;
                        float closestNestDistance = 10000f;
                        for (int i = 0; i < nestObject.Length; i++)
                        {
                            float currentDist = Vector3.Distance(transform.position, nestObject[i].transform.position);
                            if (currentDist < closestNestDistance)
                            {
                                closestNestDistance = currentDist;
                                goalObject = nestObject[i];
                            }
                        }

                        nextCell = tgs.CellGetAtPosition(goalObject.transform.position, true);
                        goalFound = true;
                        bigStates = BigStates.SLEEP;
                        state = State.MOVESELECT;
                    }
                    if (decider >= sleepPercentage)
                    {
                        bigStates = BigStates.SEARCHFORANIMAL;
                        state = State.SEARCHWORLD;
                        GetComponent<MeshRenderer>().material.color = Color.green;
                    }
                    //Debug.Log(decider);
                    break;
                case BigStates.EAT:
                    //if(memoryBankHunger != null)
                    //{
                    //    // find Cell in memBank with highest # of successful attempts
                    //    //for(int i = 0; i < memoryBankHunger.Count; i++)
                    //    //{
                    //    //    memoryBankHunger.Values[i]
                    //    //}
                    //    //nextCell = memoryBankHunger.Keys[i];

                    //}

                    isMoving(fruit);
                    Debug.Log(" EAT called is moving");
                    isInEatState = true;
                    isInSleepState = false;
                    isInSocialState = false;

                    //Is Moving-- MOVESELECT
                    // Eat();
                    //Goal met, Remember Cell -- memoryBankHunger.Add(groundTile, 0) or ++ its int Value;
                    break;
                case BigStates.SLEEP:
                    //if(memoryBankSleep != null)
                    //{
                    //memoryBankSleep
                    //}

                    isMoving(nest);
                    Debug.Log("SLEEP called is moving");
                    isInEatState = false;
                    isInSleepState = true;
                    isInSocialState = false;

                    //Is Moving-- MOVESELECT
                    //Sleep();
                    //Goal met, Remember Cell -- memoryBankSleep.Add(groundTile, 0) or ++ its int Value;
                    break;
                case BigStates.SEARCHFORANIMAL:
                    //if(memoryBankSocial != null)
                    //{
                    //    //memoryBankSocial

                    //}

                    isMoving(animal);
                    Debug.Log("SOCIAL called is moving");
                    isInEatState = false;
                    isInSleepState = false;
                    isInSocialState = true;

                    //Is Moving -- MOVESELECT
                    //InteractWithAnimal();
                    // Goal met, Remember Cell -- memoryBankSocial.Add(groundTile, 0) or ++ its int Value;
                    break;

                case BigStates.NEARPLAYER:
                    // what do?? 
                    // need to make sure can Eat, if eats, follows player, change music
                    // look in fruit script perhaps
                    //

                    transform.LookAt(_player.transform);
                    // play sound
                    //play "tentative interact animation"
                    Vector3.MoveTowards(transform.position, _player.transform.position - new Vector3(1, 0, 1), moveSpeed);

                    break;
            }



        }


        void EvaluateConsiderations()
        {
            //Changes current hunger, social, sleep values by rate of stat modifiers
            hunger += (hungerModifier * Time.deltaTime);
            sleep += sleepModifier * Time.deltaTime;
            social += socialModifier * Time.deltaTime;

            //Adds goalReward of what whichever goal was just met

            //if (bigStates == BigStates.SEARCHFORANIMAL)
            //    social -= goalReward;
            //if(bigStates == BigStates.SLEEP)
            //    sleep -= goalReward;

            //creates total 
            totalMeter = hunger + sleep + social;

            //Assigns percentages 
            hungerPercentage = (hunger / totalMeter) * 100;
            sleepPercentage = (sleep / totalMeter) * 100;
            //sleep percentage is the addition of hunger w sleep 
            sleepPercentage += hungerPercentage;
            //social percentage is the remaining
            socialPercentage = (social / totalMeter) * 100;


            //Debug.Log(sleep);

        }


        void Eat(GameObject fruit)
        {
            Debug.Log("just ate");
            goalReward = fruit.GetComponent<Fruit>().hungerValue;
            hunger -= goalReward;
            //play eating animation
            fruit.GetComponent<Fruit>().seedClone = Instantiate(fruit.GetComponent<Fruit>().seed, transform.position, Quaternion.identity);
            fruit.GetComponent<Fruit>().seedClone.transform.position = fruit.GetComponent<Fruit>().seedClone.transform.position + new Vector3(-0.5f, 0, -0.5f);
            fruit.GetComponent<Fruit>().seedClone.transform.SetParent(this.transform);
            Destroy(fruit.gameObject);
            // play sound or whatever
            bigStates = BigStates.PICKGOAL;
        }

        IEnumerator Sleep(GameObject nest)
        {
            state = State.IDLE;
            Debug.Log("Sleeping");
            transform.position = nest.transform.position;
            int sleepLength = Random.Range(minSleep, maxSleep);
            goalReward = 0.1f;
            // play sleep animation.loop
            yield return new WaitForSeconds(sleepLength);

            //wake up animation
            sleep = 0f;

            Debug.Log("done sleeping");
            bigStates = BigStates.PICKGOAL;


        }




        void InteractWithAnimal(GameObject animal)
        {
            // I Still dont know wtf

            state = State.MOVESELECT;
            social -= socialReward;
            Debug.Log("socializing");
            if (animal.GetComponent<AnimalAI>().isInSocialState)
            {
                //play interaction animation 
                bigStates = BigStates.PICKGOAL;
            }
            else if (animal.GetComponent<AnimalAI>().isInSleepState)
            {
                //play interact animation
                bigStates = BigStates.SLEEP;
            }
            else if (animal.GetComponent<AnimalAI>().isInEatState)
            {
                //play interact animation
                bigStates = BigStates.EAT;

            }

            //An interaction can be weighed for certain social meter amounts. 
            //Lower social meter based on these factors
        }


        void Move(Vector3 in_vec)
        {
            // float speed = moveList.Count * 5f;
            float speed = moveSpeed;
            float step = speed * Time.deltaTime;

            // target position must account the sphere height since the cellGetPosition will return the center of the cell which is at floor.
            in_vec.y += transform.localScale.y * 0.5f;
            transform.position = Vector3.MoveTowards(transform.position, in_vec, step);
            transform.LookAt(in_vec);

            // Check if character has reached next cell (we use a small threshold to avoid floating point comparison; also we check only xz plane since the character y position could be adjusted or limited
            // by the slope of the terrain).
            float dist = Vector2.Distance(new Vector2(transform.position.x, transform.position.z), new Vector2(in_vec.x, in_vec.z));
            if (dist <= 0.1f)
            {
                moveCounter++;
            }
        }

        void isMoving(string name) // grab targestDestination from SearchWorld() output
        {
            //            Debug.Log(nextCell);
            switch (state)
            {
                case State.IDLE:
                    //Play Current Animation;
                    break;
                //REVERT SEARCH WORLD BACK TO A FUNCTION SO IT DOESN'T STOP FOR A FRAME EVERYTIME
                case State.SEARCHWORLD:
                    //Checks for cells in memory which returned a gameObject of Goal type && high rate of success (return cell)
                    //if memoryList == Null || nothing was found at memoryList Cell location
                    //--> Use sphere casts to look for goalObject -- returns closest object of relevance.  (returns cell)
                    Vector3 origin = transform.position;
                    Collider[] hitColliders = Physics.OverlapSphere(origin, rayDistance);

                    for (int i = 0; i < hitColliders.Length; i++)
                    {
                        if (hitColliders[i].gameObject.tag == name && hitColliders[i].gameObject != this.gameObject)
                        {
                            goalObject = hitColliders[i].gameObject;
                            nextCell = tgs.CellGetAtPosition(goalObject.transform.position, true);

                            if (isInSocialState && goalObject.GetComponent<AnimalAI>().isInSocialState)
                            {

                                if (goalObject.GetComponent<AnimalAI>().rendezvousCell != null)
                                {
                                    Debug.Log("meeting at rendezvous");
                                    bool setNeighbourRendezvous = false;
                                    int j = 0;
                                    while (!setNeighbourRendezvous)
                                    {

                                        nextCell = tgs.CellGetNeighbours(goalObject.GetComponent<AnimalAI>().rendezvousCell)[j];
                                        int cellInd = tgs.CellGetIndex(nextCell);
                                        if (tgs.CellGetTag(cellInd) == 0 && nextCell != null)
                                            setNeighbourRendezvous = true;
                                        else
                                        {
                                            if (j <= 6)
                                                j++;
                                            else
                                            {
                                                Debug.Log("noAvailableNeighbor");
                                            }

                                        }
                                    }


                                }
                                else
                                {
                                    Debug.Log("setting new rendezvous");
                                    bool setNewRendezvous = false;
                                    while (!setNewRendezvous)
                                    {

                                        nextCell = tgs.CellGetAtPosition(transform.position +
                                                             ((transform.forward + new Vector3(Random.Range(-1.5f, 1.5f), 0, 0)) * Random.Range(5, 15)), true);
                                        int cellInd = tgs.CellGetIndex(nextCell);
                                        if (tgs.CellGetTag(cellInd) == 0 && nextCell != null)
                                        {
                                            rendezvousCell = nextCell;
                                            setNewRendezvous = true;
                                        }
                                        else
                                        {
                                            transform.eulerAngles += new Vector3(0, Random.Range(-30f, 30f), 0);
                                        }
                                    }
                                }
                            }


                            goalFound = true;
                            state = State.MOVESELECT;
                        }

                    }
                    if (!goalFound)
                    {
                        bool setNextCellTarget = false;

                        while (!setNextCellTarget)
                        {
                            nextCell = tgs.CellGetAtPosition(transform.position +
                                                             ((transform.forward + new Vector3(Random.Range(-1.5f, 1.5f), 0, 0)) * Random.Range(30, 60)), true);
                            int cellInd = tgs.CellGetIndex(nextCell);
                            if (tgs.CellGetTag(cellInd) == 0 && nextCell != null)
                                setNextCellTarget = true;
                            else
                                transform.eulerAngles += new Vector3(0, Random.Range(-30f, 30f), 0);

                        }

                        state = State.MOVESELECT;
                        goalFound = false;
                    }
                    break;

                case State.MOVESELECT:
                    int targetCell = tgs.CellGetIndex(nextCell); //this could be apple, animal, or nest
                    tgs.CellFadeOut(targetCell, Color.red, 50);
                    if (targetCell != -1)
                    {
                        Debug.Log("move select happening");
                        int startCell = tgs.CellGetIndex(tgs.CellGetAtPosition(transform.position, true));
                        neighbors = tgs.CellGetNeighbours(startCell);
                        int totalCost;
                        moveList = tgs.FindPath(startCell, targetCell, out totalCost);
                        Debug.Log("start cell" + startCell + "|end cell" + targetCell);
                        if (moveList == null) return;
                        tgs.CellFadeOut(moveList, Color.green, 5f);
                        moveCounter = 0;
                        state = State.MOVING;
                    }
                    else
                    {
                        Debug.Log("NULL_CELL");
                    }

                    break;

                case State.MOVING:
                    //Debug.Log("moving");
                    if (moveCounter < moveList.Count)
                    {
                        Move(tgs.CellGetPosition(moveList[moveCounter]));
                    }
                    else
                    {
                        moveCounter = 0;

                        if (bigStates == BigStates.EAT)
                        {
                            if (goalFound)
                            {
                                Eat(goalObject);
                                //state = State.MOVESELECT;
                            }
                            else
                            {
                                state = State.SEARCHWORLD;
                            }
                        }

                        if (bigStates == BigStates.SEARCHFORANIMAL)
                        {
                            if (goalFound)// && Vector3.Distance(transform.position, goalObject.transform.position) < interactDistance)
                            {
                                InteractWithAnimal(goalObject);

                            }
                            else
                            {
                                state = State.SEARCHWORLD;
                            }
                        }
                        if (bigStates == BigStates.SLEEP)
                        {
                            if (goalFound)
                            {
                                StartCoroutine(Sleep(goalObject));
                                //state = State.MOVESELECT;
                            }
                            else
                            {
                                state = State.SEARCHWORLD;
                            }
                        }
                        //                        Debug.Log("back to search world");

                    }
                    break;


            }
        }



    }
}




