using UnityEngine;
using System.Collections;

public class OnTriggerEnable : MonoBehaviour {

	public GameObject objectToActivate;

	private bool triggered;

	void OnTriggerEnter(){
		if (!triggered) {
			objectToActivate.SetActive (false);
			objectToActivate.SetActive(true);
		}
	}

}
