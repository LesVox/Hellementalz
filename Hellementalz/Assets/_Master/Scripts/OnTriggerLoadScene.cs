using UnityEngine;
using System.Collections;

public class OnTriggerLoadScene : MonoBehaviour {

	public string levelToLoad;
	public float delay;

	private bool startedLoading;

	void OnTriggerEnter(){
		if (!startedLoading) {
			startedLoading = true;
			Invoke ("LoadLevel", delay);
		}
	}

	void LoadLevel(){
		if (levelToLoad != string.Empty)
			Application.LoadLevel (levelToLoad);
	}

}
