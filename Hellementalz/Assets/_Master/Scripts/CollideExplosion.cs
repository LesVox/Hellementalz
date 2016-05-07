using UnityEngine;
using System.Collections;

public class CollideExplosion : MonoBehaviour {

	public GameObject explosionPrefab;
	public LayerMask hitLayer;
	public float explosionRadius = 5f;
	public float explosionPower = 10f;

	private GameObject explosionObject;

	void Start(){
		
	}

	void AddExplosionForce(float radius, float power){
		Vector3 explosionPos = transform.position;
		Collider[] colliders = Physics.OverlapSphere (explosionPos, radius);

		foreach (Collider hit in colliders) {
			Rigidbody rb = hit.GetComponent<Rigidbody> ();

			if (rb != null) {
				rb.AddExplosionForce (power, explosionPos, radius, 3f);
			}
		}
	}

	void OnTriggerEnter(Collider col){



		if (((1<<col.gameObject.layer) & hitLayer) != 0) {

            explosionObject = (GameObject)Instantiate(explosionPrefab, transform.position, Quaternion.identity);

//            HP hp = col.GetComponent<HP>();
//			if (hp != null)
//			{
//				hp.DealDamage(1);
//			}
//
			Destroy (gameObject);

            /*
			if (explosionObject != null) {
				explosionObject.SetActive (false);
				explosionObject.transform.position = transform.position;
				explosionObject.SetActive (true);
				gameObject.SetActive (false);
			}
            */
		}
	}

}
