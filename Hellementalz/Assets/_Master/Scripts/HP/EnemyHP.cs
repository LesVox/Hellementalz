using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class EnemyHP : HP
{
    [SerializeField]
    private float m_restartDelay = 5;

    [SerializeField]
    private GameObject m_winObject;

    protected override void Die()
    {
        Debug.Log("Enemy died");
        //Disable shooting bot
        ShootingBot shootingBot = GetComponent<ShootingBot>();
        if (shootingBot != null)
            shootingBot.enabled = false;

        //Disable renderer
        Renderer thisRenderer = GetComponent<Renderer>();
        if (thisRenderer != null)
            thisRenderer.enabled = false;

        //Disable renderer
        Collider thisCollider = GetComponent<Collider>();
        if (thisCollider != null)
            thisCollider.enabled = false;

        //Enable winobject
        if (m_winObject != null)
            m_winObject.SetActive(true);

        //Start respawn timer
        StartCoroutine(DelayedRespawn());
    }

    private IEnumerator DelayedRespawn()
    {
        yield return new WaitForSeconds(m_restartDelay);
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }
}
