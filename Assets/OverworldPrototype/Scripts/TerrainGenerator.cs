using UnityEngine;

public class TerrainGenerator : MonoBehaviour {
    
    //size of Terrain 
    public int width = 256;
    public int height = 256;

    //depth of heightmap
    public int depth = 20;

    //scale of heightmap
    public float scale = 20f;

    //allows you to reposition terrain data while retaining the same equation
    public float offsetX = 100f;
    public float offsetY = 100f;

    // prefabs for object instantiation
    public GameObject scary_tree, cartoon_tree, pine_tree, circle_tree, theWindmill, rock_1, rock_2, rock_3;

    // number of objects in instantiated biomes
    public int treeAmount;
    public int rockAmount;

    // used for number of object instantiations and distance between them
    public int instantAmount = 10;
    public float distBetweenInstant = 50f;

    //size of UnitCircle or Sphere for instantiation
    public int spawnSizeArea;

    // will alter sin waves 
    public float sinWaveNumX = 5f;
    public float sinWaveNumY = 5f;

    void Start()
    {
        // lets us alter terrain
        Terrain terrain = GetComponent<Terrain>();
        terrain.terrainData = GenerateTerrain(terrain.terrainData);
    }

    // this function grabs the terrain data and lets us alter it with GenerateHeights()
    TerrainData GenerateTerrain(TerrainData terrainData)
    {
        terrainData.heightmapResolution = width + 1;

        terrainData.size = new Vector3(width, depth, height);

        terrainData.SetHeights(0, 0, GenerateHeights());

        return terrainData;
    }

    // this will generate the terrain map and instantiate objects along the way
    float [,] GenerateHeights()
    {
        float[,] heights = new float[width, height];
        for(int x = 0; x < width; x++)
        {
            for(int y = 0; y < height; y++)
            {
                heights[x, y] = CalculateHeight(x, y);
                if(x < instantAmount && y < instantAmount) //covers distance of possible instantiation
                {
                    int rando = Random.Range(0, 100); //random int

                    if(rando < 1) //will spawn windmill at a point
                    {
                        var objectPosition = new Vector3(x * distBetweenInstant, depth, y * distBetweenInstant); //places the object correctly on Terrain Map
                        Instantiate(theWindmill, objectPosition, Quaternion.Euler(0f, 0f, 0f));
                    }

                    if (rando > 1 && rando < 25) //will spawn a scary forest
                    {
                        var objectPosition = new Vector3(x * distBetweenInstant, depth, y * distBetweenInstant);

                        for (int i = 0; i < treeAmount; i++)
                        {
                            //creates a unit circle and places objectPosition within it
                            var unitCircle = Random.insideUnitCircle * spawnSizeArea;
                            var newPosition = new Vector3(unitCircle.x, 0, unitCircle.y) + objectPosition;

                            // in new Position, y should be equal to current height of terrain at whichever point object is spawned

                            int rotateRando = Random.Range(0, 360);

                            Instantiate(scary_tree, newPosition, Quaternion.Euler(0f, rotateRando, 0f));
                        }
                    }

                    if (rando > 25 && rando < 75) //will spawn a cartoon forest
                    {
                        var objectPosition = new Vector3(x * distBetweenInstant, depth, y * distBetweenInstant);
                        
                        for (int i = 0; i < treeAmount; i++)
                        {
                            int treeRando = Random.Range(0, 100);
                            int rotateRando = Random.Range(0, 360);
                            var unitCircle = Random.insideUnitCircle * spawnSizeArea;
                            var newPosition = new Vector3(unitCircle.x, 0, unitCircle.y) + objectPosition;

                            if (treeRando < 33)
                                Instantiate(cartoon_tree, newPosition, Quaternion.Euler(0f, rotateRando, 0f));
                            if(treeRando > 33 && rando < 66)
                                Instantiate(pine_tree, newPosition, Quaternion.Euler(0f, rotateRando, 0f));
                            if(treeRando > 66)
                                Instantiate(circle_tree, newPosition, Quaternion.Euler(0f, rotateRando, 0f));
                        }
                    }

                    if (rando > 75 && rando < 100) // will spawn rock formations
                    {
                        var objectPosition = new Vector3(x * distBetweenInstant, depth, y * distBetweenInstant);
                        
                        for (int i = 0; i < rockAmount; i++)
                        {
                            int rockRando = Random.Range(0, 100);
                            int rotateRando = Random.Range(0, 360);
                            var unitCircle = Random.insideUnitCircle * spawnSizeArea;
                            var newPosition = new Vector3(unitCircle.x, 0, unitCircle.y) + objectPosition;

                            if (rockRando < 33)
                                Instantiate(rock_1, newPosition, Quaternion.Euler(0f, rotateRando, 0f));
                            if (rockRando > 33 && rando < 66)
                                Instantiate(rock_2, newPosition, Quaternion.Euler(0f, rotateRando, 0f));
                            if (rockRando > 66)
                                Instantiate(rock_3, newPosition, Quaternion.Euler(0f, rotateRando, 0f));
                        }
                    }
                }
                
            }
        }

        return heights;
    }

    //this applies an equation which will generate heights mathematically
    float CalculateHeight(int x, int y)
    {
        float xCoord = (float)x / width * scale + offsetX;
        float yCoord = (float)y / height * scale + offsetY;

        return Mathf.PerlinNoise(xCoord, yCoord); //perlin noise

        //return Mathf.Sin(sinWaveNumX * Mathf.PI * xCoord) * Mathf.Sin(sinWaveNumY * Mathf.PI * yCoord);
    }

}
