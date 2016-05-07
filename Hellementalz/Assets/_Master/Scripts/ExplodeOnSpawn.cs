using UnityEngine;
using System.Collections;

public class ExplodeOnSpawn : MonoBehaviour {

	public float explosionRadius = 5f;
	public float explosionPower = 300f;

	void Start(){
		Invoke ("AddExplosionForce", 0.05f);
	}

	void AddExplosionForce(){
		Vector3 explosionPos = transform.position;
		Collider[] colliders = Physics.OverlapSphere (explosionPos, explosionRadius);

		foreach (Collider hit in colliders) {
			Rigidbody rb = hit.GetComponent<Rigidbody> ();

			if (rb != null) {
				rb.AddExplosionForce (explosionPower, explosionPos, explosionRadius, 3f);
			}
		}
	}
}
