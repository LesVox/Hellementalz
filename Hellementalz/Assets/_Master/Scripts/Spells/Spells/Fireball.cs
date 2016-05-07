using UnityEngine;
using System.Collections;
using System;

public class Fireball : MonoBehaviour
{
    [SerializeField]
    private float m_speed = 1;
    [SerializeField]
    private int m_damage = 1;

    Rigidbody m_rigidbody;
    
    void Awake()
    {
        m_rigidbody = GetComponent<Rigidbody>();
        AssertParams();
    }

    // Update is called once per frame
    void FixedUpdate ()
    {
        m_rigidbody.MovePosition(m_rigidbody.position + Vector3.forward * m_speed * Time.deltaTime);
	}

    private void AssertParams()
    {
        Debug.Assert(m_rigidbody != null, "Rigidbody not found");
        Debug.Assert(m_speed > 0.0001f, "Speed is not positive");
        Debug.Assert(m_damage > 0, "Damage is not positive");
    }
}
