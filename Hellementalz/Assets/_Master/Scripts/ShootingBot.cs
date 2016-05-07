using UnityEngine;
using System.Collections;

public class ShootingBot : MonoBehaviour
{
    [SerializeField]
    private float m_minCooldown = 0.5f, m_maxCooldown = 1;

    private float m_timeSinceLastAttack = -1;
    private float m_currentCooldown;

    void Awake()
    {
        AssertParams();
    }

    void Start()
    {
        SetNewCooldown();
    }

	// Update is called once per frame
	void Update ()
    {
        m_timeSinceLastAttack += Time.deltaTime;

        if (m_timeSinceLastAttack >= m_currentCooldown)
        {
            SetNewCooldown();
            Vector3 direction = (Camera.main.transform.position - transform.position).normalized;
            SpellFactory.CastLightFireball(transform.position + direction * 3, direction);
        }
	}

    private void SetNewCooldown()
    {
        m_currentCooldown = Random.Range(m_minCooldown, m_maxCooldown);
        m_timeSinceLastAttack = 0;
    }

    private void AssertParams()
    {
        Debug.Assert(m_minCooldown <= m_maxCooldown - 0.0001f, "Min cooldown is larger than max cooldown.");
    }
}
