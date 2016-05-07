using UnityEngine;

public class Fireball : MonoBehaviour
{
    [SerializeField]
    private float m_speed = 1;
    [SerializeField]
    private int m_damage = 1;
    [SerializeField]
    private float m_maxRange = 10;

    private Rigidbody m_rigidbody;
    private Vector3 m_startPosition;
    private Vector3 m_direction;
    
    public void CastFireball(Vector3 origin, Vector3 direction)
    {
        transform.position = m_startPosition = origin; //Using transform instead of rigidbody to ignore collisions
        m_direction = direction.normalized;
        gameObject.SetActive(true);
    }

    void Awake()
    {
        m_rigidbody = GetComponent<Rigidbody>();
        gameObject.SetActive(false);
        
        AssertParams();
    }
    
    void FixedUpdate ()
    {
        if (!m_rigidbody.useGravity)
        {
            m_rigidbody.velocity = m_direction * m_speed;
        }
	}

    void Update()
    {
        if (Vector3.SqrMagnitude(m_startPosition - m_rigidbody.position) > m_maxRange * m_maxRange)
        {
            m_rigidbody.useGravity = true;
        }

        if (m_rigidbody.position.y < m_startPosition.y - 100)
        {
            Destroy(gameObject);
        }
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.GetComponent<Target>() != null)
        {
            Debug.Log("Hit");
            Destroy(gameObject);
        }
    }

    private void AssertParams()
    {
        Debug.Assert(m_rigidbody != null, "Rigidbody not found");
        Debug.Assert(m_speed > 0.0001f, "Speed is not positive");
        Debug.Assert(m_damage > 0, "Damage is not positive");
    }
}
