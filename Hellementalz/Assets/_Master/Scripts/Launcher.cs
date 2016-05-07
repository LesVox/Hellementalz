using UnityEngine;
using System.Collections;

public class Launcher : MonoBehaviour {

	public GameObject objectToLaunch;
	public Transform startPosition;
	public float launchForce = 10f;

	private Rigidbody rb;
	private Fireball fire;

	// Use this for initialization
	void Start () {
		objectToLaunch.SetActive (false);
		rb = objectToLaunch.GetComponent<Rigidbody> ();
	
		fire = objectToLaunch.GetComponent<Fireball> ();
	}

	void Shoot(){
		GameObject fireprefab = (GameObject)Instantiate(objectToLaunch, transform.position, Quaternion.identity);
		fire = fireprefab.GetComponent<Fireball> ();

		if (fire != null) {
			fire.CastFireball (transform.position, transform.forward);
		}
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetMouseButtonDown (0)) {

			Shoot ();

//			objectToLaunch.SetActive (false);
//			rb = objectToLaunch.GetComponent<Rigidbody> ();
//			objectToLaunch.transform.position = startPosition.transform.position;
//			objectToLaunch.transform.rotation = startPosition.transform.rotation;
//			objectToLaunch.SetActive (true);
//			rb.velocity = Vector3.zero;
//			rb.AddForce (startPosition.transform.forward * launchForce, ForceMode.Impulse);
		}
	}
}
