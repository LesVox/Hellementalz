using UnityEngine;
using UnityEngine.UI;

public class HP : MonoBehaviour
{
    [SerializeField]
    int m_maxHp = 1;

    [SerializeField]
    private Slider m_hpBar;

    protected int m_currentHp;

    public void DealDamage(int damage)
    {
        Debug.Assert(damage > 0, "Damage is not positive.");

        m_currentHp -= damage;

        if (m_hpBar != null)
            m_hpBar.value = (float)m_currentHp / m_maxHp;

        if (m_currentHp <= 0)
        {
            m_currentHp = 0;
            Die();
        }
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

	public int GetHealth()
    {
		return m_currentHp;
	}

    private void AssertParams()
    {
        Debug.Assert(m_maxHp > 0, "Max HP is not positive.");
    }
}
