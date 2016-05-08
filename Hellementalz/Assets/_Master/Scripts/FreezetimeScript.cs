using UnityEngine;
using System.Collections;

public class FreezetimeScript : MonoBehaviour
{
    public bool TimeIsSlowed = false;
    public bool RunningCoroutine = false;

    void Update()
    {
        Debug.Log(2);
        if(TimeIsSlowed && !RunningCoroutine)
        {
            StartCoroutine(RestoreTime());
        }
    }

    public void SlowTime()
    {
        Debug.Log(3);
        Time.timeScale = .2f;
        TimeIsSlowed = true;
    }

    IEnumerator RestoreTime()
    {
        float rate = 1f / 0.3f;
        float currentTime = 0;

        //Time.timeScale += Time.timeScale;
        RunningCoroutine = true;

        while (currentTime < 1) {
            currentTime += rate * Time.deltaTime;
            Time.timeScale = Mathf.Lerp(0.3f, 1f, currentTime);
            yield return null;
        }
        TimeIsSlowed = false;
        RunningCoroutine = false;
        /*
        if (Time.timeScale >= 1f)
        {
            Time.timeScale = 1f;
            TimeIsSlowed = false;
            RunningCoroutine = false;
        }
        */

       // yield return new WaitForSeconds(.3f);
    }
}
