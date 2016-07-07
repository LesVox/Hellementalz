using UnityEngine;
using System.Collections;

public class ShootingBot : MonoBehaviour
{
    [SerializeField]
    private float m_minCooldown = 0.5f, m_maxCooldown = 1;
    [SerializeField]
    private Transform m_target;

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
            Vector3 Height = Vector3.up * 1.4f;
            Vector3 direction = (m_target.position - (transform.position + Height)).normalized;
            
            SpellFactory.CastLightFireball(Height + (transform.position + direction * 3), direction);
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
