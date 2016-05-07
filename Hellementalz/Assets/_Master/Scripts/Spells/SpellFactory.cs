﻿using System.Collections.Generic;
using UnityEngine;

public class SpellFactory : MonoBehaviour
{
    public enum SpellTypes
    {
        LightFireball,
        StrongFireball
    }

    [System.Serializable]
    public struct SpawnableSpell
    {
        public SpellTypes spellType;
        public GameObject spellPrefab;
    }
    
    [SerializeField]
    private SpawnableSpell[] m_spellPrefabs;

    void Start()
    {
        CastStrongFireball(Vector3.zero, Vector3.forward);
    }

    /// <summary>
    /// Casts a light fireball in a given direction
    /// </summary>
    /// <param name="origin">The start position of the fireball</param>
    /// <param name="direction">The direction of the fireball</param>
    public void CastLightFireball(Vector3 origin, Vector3 direction)
    {
        CastFireball(GetPrefabFromSpellType(SpellTypes.LightFireball), origin, direction);
    }

    /// <summary>
    /// Casts a strong fireball in a given direction
    /// </summary>
    /// <param name="origin">The start position of the fireball</param>
    /// <param name="direction">The direction of the fireball</param>
    public void CastStrongFireball(Vector3 origin, Vector3 direction)
    {
        CastFireball(GetPrefabFromSpellType(SpellTypes.StrongFireball), origin, direction);
    }

    /// <summary>
    /// Casts a fireball in a given direction
    /// </summary>
    /// <param name="origin">The start position of the fireball</param>
    /// <param name="direction">The direction of the fireball</param>
    private void CastFireball(GameObject prefab, Vector3 origin, Vector3 direction)
    {
        GameObject newObject = Instantiate<GameObject>(prefab);
        newObject.name = prefab.name;

        Fireball fireballScript = newObject.GetComponent<Fireball>();
        fireballScript.CastFireball(Vector3.zero, Vector3.forward);
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
}
