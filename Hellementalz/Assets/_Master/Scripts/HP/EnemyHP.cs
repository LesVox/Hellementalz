using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class EnemyHP : HP
{
    [SerializeField]
    private float m_restartDelay = 5;

    [SerializeField]
    private GameObject m_winObject;

    private float m_timer;

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

        GameData.GameOver = true;

        //Start respawn timer
        StartCoroutine(SlowMotion());
    }

    void Update()
    {
        if (m_currentHp <= 0)
        {
            //Dead
            m_timer += Time.unscaledDeltaTime; //Time is stopped when dead

            if (m_timer >= m_restartDelay)
            {
                StopCoroutine(SlowMotion());
                Time.timeScale = 1;
                GameData.GameOver = false;
                SceneManager.LoadScene(0);
            }
        }
    }

    private IEnumerator SlowMotion()
    {
        while (Time.timeScale > 0.2 && GameData.GameOver)
        {
            //Time.timeScale = Mathf.Lerp(Time.timeScale, 0.2f, Time.deltaTime * 10);
            yield return null;
        }
    }
}
