using UnityEngine;
using System.Collections;

public class FreezetimeScript : MonoBehaviour
{
    public bool TimeIsSlowed = false;

    void Update()
    {
        if(TimeIsSlowed)
        {
            StartCoroutine(RestoreTime());
        }
    }

    public void SlowTime()
    {
        Time.timeScale = .2f;
        TimeIsSlowed = true;
    }

    IEnumerator RestoreTime()
    {
        Time.timeScale += Time.timeScale;
        if (Time.timeScale >= 1f)
        {
            Time.timeScale = 1f;
            TimeIsSlowed = false;
        }
        yield return new WaitForSeconds(.3f);
    }
}
