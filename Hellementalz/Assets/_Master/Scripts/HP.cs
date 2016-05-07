using UnityEngine;
using System.Collections;

public class HP : MonoBehaviour
{
    [SerializeField]
    int m_maxHp = 1;

    private int m_currentHp;

    public void DealDamage(int damage)
    {
        Debug.Assert(damage > 0, "Damage is not positive.");

        m_currentHp -= damage;

        if (m_currentHp <= 0)
        {
            Destroy(gameObject);
        }

        Debug.Log("HP: " + m_currentHp);
    }

    void Awake()
    {
        m_currentHp = m_maxHp;
        AssertParams();
    }

    private void AssertParams()
    {
        Debug.Assert(m_maxHp > 0, "Max HP is not positive.");
    }
}
