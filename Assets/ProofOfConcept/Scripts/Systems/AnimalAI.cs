﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace TGS
{
	public class AnimalAI : MonoBehaviour
	{
        enum BigStates
        {
            EAT,
            SLEEP,
            SEARCHFORANIMAL,
            PICKGOAL
        }
        BigStates bigStates;


		enum State
		{
			MOVING,
			MOVESELECT,
          
        
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

        //Decision Range for Picking goal
        float totalMeter;
        float hungerPercentage;
        float socialPercentage;
        float sleepPercentage;

        float chanceToAwaken;
        bool isSleeping;

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
        public string nest;
        public string animal;

        //Where will it go next? 
        Cell nextCell;
        int highestSuccess;

        //Vision Range
        float rayDistance = 10f;

        //could add memory banks for other animals and fruit types


        // Use this for initialization
        void Start ()
		{
			tgs = TerrainGridSystem.instance;
			state = State.MOVESELECT;
            bigStates = BigStates.PICKGOAL;

            //Assign Stats 
            hungerModifier += Random.Range(0, .3f);
            socialModifier += Random.Range(0, .3f);
            sleepModifier += Random.Range(0, .3f);

            //Zero Meters
            hunger = 0;
            social = 0;
            sleep = 0;


            chanceToAwaken = 10;


        }
	
		// Update is called once per frame
		void Update ()
		{
            //if(nearAnimal == true){
            // social meter decreases over time

            //Update neighboring cells with for() loop

            //Always run this
            EvaluateConsiderations();

            switch (bigStates)
            {

                case BigStates.PICKGOAL:
                    float decider = Random.Range(0, 100);

                    if (decider < hungerPercentage)
                    {
                        bigStates = BigStates.EAT;
                        SearchWorld(fruit);
                    }
                    if (decider >= hungerPercentage && decider < sleepPercentage)
                    {
                        bigStates = BigStates.SLEEP;
                        SearchWorld(nest);
                    }
                    if (decider >= sleepPercentage)
                    {
                        bigStates = BigStates.SEARCHFORANIMAL;
                        SearchWorld(animal);
                    }
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
                    isMoving(nextCell);
                    Debug.Log(" EAT called is moving");
                    //Is Moving-- MOVESELECT
                    // Eat();
                    //Goal met, Remember Cell -- memoryBankHunger.Add(groundTile, 0) or ++ its int Value;
                    break;
                case BigStates.SLEEP:
                    //if(memoryBankSleep != null)
                    //{
                    //memoryBankSleep
                    //}

                    Debug.Log("SLEEP called is moving");
                    //Is Moving-- MOVESELECT
                    //Sleep();
                    //Goal met, Remember Cell -- memoryBankSleep.Add(groundTile, 0) or ++ its int Value;
                    break;
                case BigStates.SEARCHFORANIMAL:
                    //if(memoryBankSocial != null)
                    //{
                    //    //memoryBankSocial

                    //}
                    isMoving(nextCell);

                    Debug.Log("SOCIAL called is moving");
                    //Is Moving -- MOVESELECT
                    //InteractWithAnimal();
                    // Goal met, Remember Cell -- memoryBankSocial.Add(groundTile, 0) or ++ its int Value;
                    break;
            }

            

		}
		
		

        void EvaluateConsiderations()
        {
            //Changes current hunger, social, sleep values by rate of stat modifiers
            hunger += (hungerModifier * Time.deltaTime);
            if (bigStates != BigStates.SLEEP)
            {
                sleep += sleepModifier * Time.deltaTime;
            }
            else
            {
                sleep -= goalReward;
            }
            social += socialModifier * Time.deltaTime;

            //Adds goalReward of what whichever goal was just met
            if (bigStates == BigStates.EAT)
                hunger -= goalReward;
            if (bigStates == BigStates.SEARCHFORANIMAL)
                social -= goalReward;

            //creates total 
            totalMeter = hunger + sleep + social;

            //Assigns percentages 
            hungerPercentage = hunger / totalMeter;
            sleepPercentage = sleep / totalMeter;
            //sleep percentage is the addition of hunger w sleep 
            sleepPercentage += hungerPercentage;
            //social percentage is the remaining
            socialPercentage = social / totalMeter;
            
            

        }

        Cell SearchWorld(string name)
        {
            //Checks for cells in memory which returned a gameObject of Goal type && high rate of success (return cell)
            //if memoryList == Null || nothing was found at memoryList Cell location
            //--> Use sphere casts to look for goalObject -- returns closest object of relevance.  (returns cell)
            Debug.Log("searched world");
            RaycastHit hit;
            float distanceToObstacle = 0;

            Vector3 origin = transform.position;
            if (Physics.SphereCast(origin, rayDistance, transform.forward, out hit, 10))
            {
                distanceToObstacle = hit.distance;
                if(hit.collider.gameObject.tag == name)
                {
                    nextCell = tgs.CellGetAtPosition(hit.collider.gameObject.transform.position, true);
                    goalFound = true;
                    goalObject = hit.collider.gameObject;
                    return nextCell;
                    
                }

                else
                {
                    nextCell = tgs.CellGetAtPosition(transform.position + transform.forward,true);
                    goalFound = false;
                    return nextCell;

                    
                    //nextCell = random neighbor
                }
            }
            nextCell = tgs.CellGetAtPosition(transform.position + transform.forward, true);
            goalFound = false;
            return nextCell;
            //If Null --> move to point outside last Spherecast and repeat. (returns cell)
            //Will eventually return with a gameObject match, call correct function --> foundGoal == true

        }

        void Eat(GameObject fruit)
        {
            Debug.Log("just ate");
            goalReward = fruit.GetComponent<Fruit>().hungerValue;
            //play eating animation
            fruit.GetComponent<Fruit>().feedAnimal = true;
            bigStates = BigStates.PICKGOAL;
        }

        void Sleep(GameObject nest)
        {
            while(sleep> 1)
            {
                isSleeping = true; //prob don't need this, can just use States
                //play sleeping animation
                Debug.Log("sleeping");
                if((hunger + social) > sleep)
                {
                    goalReward = 2 * Time.deltaTime;
                    chanceToAwaken += goalReward;
                    float randomChance = Random.Range(0, 100);
                    if(randomChance < chanceToAwaken)
                    {
                        //wake up animation
                        bigStates = BigStates.PICKGOAL;
                    }

                }
                else
                {
                    goalReward = 1 * Time.deltaTime;
                }
            }
            

        }

        void InteractWithAnimal(GameObject animal)
        {
            Debug.Log("socializing");
            //isSocializing = true; only need this for while loop
            if (animal.GetComponent<AnimalAI>().bigStates == BigStates.SEARCHFORANIMAL){
                //play interaction animation 
                goalReward = socialReward;
                
                bigStates = BigStates.PICKGOAL;
            }
            else if (animal.GetComponent<AnimalAI>().isSleeping)
            {
                // either try to wake up this other animal
                //This animal sleeps too, for companionship
                
                bigStates = BigStates.PICKGOAL;
            }
            else if(animal.GetComponent<AnimalAI>().bigStates == BigStates.EAT)
            {
                // either try to interact with this other animal
                // this animal joins other in search for food
                
                bigStates = BigStates.PICKGOAL;
            }

            //An interaction can be weighed for certain social meter amounts. 
            //Lower social meter based on these factors
        }


        void Move(Vector3 in_vec)
        {
            float speed = moveList.Count * 5f;
            float step = speed * Time.deltaTime;

            // target position must account the sphere height since the cellGetPosition will return the center of the cell which is at floor.
            in_vec.y += transform.localScale.y * 0.5f;
            transform.position = Vector3.MoveTowards(transform.position, in_vec, step);

            // Check if character has reached next cell (we use a small threshold to avoid floating point comparison; also we check only xz plane since the character y position could be adjusted or limited
            // by the slope of the terrain).
            float dist = Vector2.Distance(new Vector2(transform.position.x, transform.position.z), new Vector2(in_vec.x, in_vec.z));
            if (dist <= 0.1f)
            {
                moveCounter++;
            }
        }

        void isMoving(Cell targestDestination) // grab targestDestination from SearchWorld() output
        {
            switch (state)
            {
                case State.MOVING:
                    Debug.Log("moving");
                    if (moveCounter < moveList.Count)
                    {
                        Move(tgs.CellGetPosition(moveList[moveCounter]));
                    }
                    else
                    {
                        moveCounter = 0;
                        Debug.Log("back to search world");
                        if(bigStates == BigStates.EAT)
                        {
                            if (goalFound)
                            {
                                Eat(goalObject);
                            }
                            else
                            {
                                SearchWorld(fruit);
                            }
                        }
                        
                        if(bigStates == BigStates.SEARCHFORANIMAL)
                        {
                            if (goalFound)
                            {
                                InteractWithAnimal(goalObject);
                            }
                            else
                            {
                                SearchWorld(animal);
                            }
                        }
                        if(bigStates == BigStates.SLEEP)
                        {
                            if (goalFound)
                            {
                                Sleep(goalObject);
                            }
                            else
                            {
                                SearchWorld(nest);
                            }
                        }
                        state = State.MOVESELECT;
                    }
                    break;

                case State.MOVESELECT:
                    Debug.Log("Is MOVESELECT");
                    int targetCell = tgs.CellGetIndex(targestDestination); //this could be apple, animal, or nest
                    tgs.CellFadeOut(targetCell, Color.red, 50);
                    if (targetCell != -1)
                    {
                        Debug.Log("move select happening");
                        int startCell = tgs.CellGetIndex(tgs.CellGetAtPosition(transform.position, true));
                        neighbors = tgs.CellGetNeighbours(startCell);
                        int totalCost;
                        moveList = tgs.FindPath(startCell, targetCell, out totalCost);
                        if (moveList == null) return;
                        Debug.Log("Total move cost: " + totalCost);
                        tgs.CellFadeOut(moveList, Color.green, 5f);
                        moveCounter = 0;
                        state = State.MOVING;
                    }
                    else
                    {
                        Debug.Log("NULL_CELL");
                    }

                    break;

            }
        }

        

    }
}



