using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Countdown : MonoBehaviour {

    [SerializeField]
    Text MyText;

    [SerializeField]
    float Timer = 10;
    string UIText;


    void Start ()
    {
        
    }
	
	void Update ()
    {
        Timer -= Time.unscaledDeltaTime;
        int TimeLeft = Mathf.FloorToInt(Timer);
        MyText.text = TimeLeft.ToString();
	}
}
