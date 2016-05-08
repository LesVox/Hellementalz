using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class PlayerHP : HP
{
    [SerializeField]
    private float m_restartDelay = 5;

    [SerializeField]
    private GameObject m_loseObject;

    private float m_timer;

    protected override void Die()
    {
        if (m_loseObject != null)
            m_loseObject.SetActive(true);

        Time.timeScale = 0;
        m_timer = 0;
        StartCoroutine(DelayedRestart());
    }

    void Update()
    {
        if (m_currentHp <= 0)
        {
            //Dead
            m_timer += Time.unscaledDeltaTime; //Time is stopped when dead

            if (m_timer >= m_restartDelay)
            {
                Time.timeScale = 1;
                SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
            }
        }
    }

    IEnumerator DelayedRestart()
    {
        Debug.Log("Start timer");
        yield return new WaitForSeconds(m_restartDelay);
        Debug.Log("Restart");
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }
}
