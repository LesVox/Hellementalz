using UnityEngine;
using System.Collections;

public class HP : MonoBehaviour
{
    [SerializeField]
    int m_maxHp = 1;

    protected int m_currentHp;

    public void DealDamage(int damage)
    {
        Debug.Assert(damage > 0, "Damage is not positive.");

        m_currentHp -= damage;

        if (m_currentHp <= 0)
        {
            m_currentHp = 0;
            Die();
        }

        Debug.Log("HP " + name + ": " + m_currentHp);
    }

    protected virtual void Die()
    {
        Destroy(gameObject);
    }

    void Awake()
    {
        m_currentHp = m_maxHp;
        AssertParams();
    }

	public int GetHealth(){
		return m_currentHp;
	}

    private void AssertParams()
    {
        Debug.Assert(m_maxHp > 0, "Max HP is not positive.");
    }
}
