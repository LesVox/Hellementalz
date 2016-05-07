using System.Collections.Generic;
using UnityEngine;

public class SpellFactory : MonoBehaviour
{
    public enum SpellTypes
    {
        LightFireball,
        StrongFireball,
        EarthPillar
    }

    [System.Serializable]
    public struct SpawnableSpell
    {
        public SpellTypes spellType;
        public GameObject spellPrefab;
    }
    
    

    [SerializeField]
    private SpawnableSpell[] m_spellPrefabs;

    private static SpellFactory Instance;

    

    /// <summary>
    /// Casts a light fireball in a given direction
    /// </summary>
    /// <param name="origin">The start position of the fireball</param>
    /// <param name="direction">The direction of the fireball</param>
    public static void CastLightFireball(Vector3 origin, Vector3 direction)
    {
        Instance.CastFireball(Instance.GetPrefabFromSpellType(SpellTypes.LightFireball), origin, direction);
    }

    /// <summary>
    /// Casts a strong fireball in a given direction
    /// </summary>
    /// <param name="origin">The start position of the fireball</param>
    /// <param name="direction">The direction of the fireball</param>
    public static void CastStrongFireball(Vector3 origin, Vector3 direction)
    {
        Instance.CastFireball(Instance.GetPrefabFromSpellType(SpellTypes.StrongFireball), origin, direction);
    }

    /// <summary>
    /// Spawns a wall at the given position
    /// </summary>
    /// <param name="origin">The position of the wall</param>
    public static void CastWall(Vector3 origin)
    {
        GameObject newObject = Instantiate<GameObject>(Instance.GetPrefabFromSpellType(SpellTypes.EarthPillar));

        Wall wall = newObject.GetComponent<Wall>();
        wall.SpawnWall(origin);
    }

    /// <summary>
    /// Casts a fireball in a given direction
    /// </summary>
    /// <param name="origin">The start position of the fireball</param>
    /// <param name="direction">The direction of the fireball</param>
    private void CastFireball(GameObject prefab, Vector3 origin, Vector3 direction)
    {
        AssertInstance();

        GameObject newObject = Instantiate<GameObject>(prefab);
        newObject.name = prefab.name;

        Fireball fireballScript = newObject.GetComponent<Fireball>();
        fireballScript.CastFireball(origin, direction);
            
    }

    void Awake()
    {
        if (Instance != null)
        {
            Debug.LogError("Multiple instances of SpellFactory found.");
            return;
        }

        Instance = this;
    }

    
    /// <summary>
    /// Substitute to using a dictionary. Returns a prefab from a given spell type.
    /// </summary>
    /// <param name="type">The spell type</param>
    /// <returns>The prefab</returns>
    private GameObject GetPrefabFromSpellType(SpellTypes type)
    {
        foreach (SpawnableSpell spell in m_spellPrefabs)
        {
            if (spell.spellType == type)
                return spell.spellPrefab;
        }

        throw new System.Exception("Spell " + type + " not defined in spellPrefabs");
    }

    private void AssertInstance()
    {
        if (Instance == null)
        {
            throw new System.Exception("SpellFactory instance is null. Does the prefab exist in the scene?");
        }
    }
}
