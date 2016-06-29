using UnityEngine;
using System.Collections;

public class LoadScreenshot : MonoBehaviour {

    [SerializeField]
    GameObject m_screenshot;

	// Use this for initialization
	void Start () 
    {
        Instantiate(m_screenshot);
        Time.timeScale = 0;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
