using UnityEngine;
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
        
        GameData.GameOver = true;
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
                GameData.GameOver = false;
                SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
            }
        }
    }
}
