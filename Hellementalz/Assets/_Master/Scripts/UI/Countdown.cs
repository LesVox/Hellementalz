using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Countdown : MonoBehaviour {

    [SerializeField]
    Text MyText;

    [SerializeField]
    float Timer = 6;
    
	void Start ()
    {
	}
	
	void Update ()
    {
        Timer -= Time.unscaledDeltaTime;
        int TimeLeft = Mathf.FloorToInt(Timer);
        MyText.GetComponent<Text>().text = TimeLeft.ToString();
	}
}
