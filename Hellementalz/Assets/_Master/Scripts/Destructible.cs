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

	void OnDestroy(){
		Destruction ();
	}

	void Destruction(){
		if (gameObject != null)
			gameObject.SetActive (false);

		if (destroyedObjectPrefab != null) {
			destroyedObjectPrefab.transform.localScale = gameObject.transform.localScale;
			destroyedObjectPrefab.transform.rotation = gameObject.transform.rotation;
			destroyedObjectPrefab.SetActive (true);
		}
	}
}
