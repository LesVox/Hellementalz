using UnityEngine;
using System.Collections;

public class LifetimeObject : MonoBehaviour
{
    [SerializeField][Tooltip("How long the wall will live")]
    private float m_lifetime = 1;
    [SerializeField][Tooltip("An object that will spawn when this object despawns. Can be null to not spawn anything.")]
    private GameObject m_spawnOnExpire = null;

    private float m_lifetimeTimer = 0;
    
    void Update()
    {
        m_lifetimeTimer += Time.deltaTime;

        if (m_lifetimeTimer >= m_lifetime)
        {
            //Time's up, go away
            Destroy(gameObject);

            if (m_spawnOnExpire != null)
            {
                Instantiate(m_spawnOnExpire, transform.position, transform.rotation);
            }
        }
    }
}
