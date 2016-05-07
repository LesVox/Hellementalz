using UnityEngine;
using System.Collections;

public class Destructible : MonoBehaviour {

	public GameObject destroyedObjectPrefab;

	private HP myHP;

	void Awake(){
		destroyedObjectPrefab = (GameObject)Instantiate (destroyedObjectPrefab, transform.position, Quaternion.identity);
		destroyedObjectPrefab.SetActive (false);
		myHP = GetComponent<HP> ();
	}

	void Update(){
		if (myHP != null) {
			if (myHP.GetHealth() <= 0) {
				Destruction ();
			}
		}
	}

	void Destruction(){
		gameObject.SetActive (false);
		destroyedObjectPrefab.SetActive (true);
	}
}
