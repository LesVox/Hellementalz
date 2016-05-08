using UnityEngine;
using System.Collections;

public class CollideExplosion : MonoBehaviour {

	public GameObject explosionPrefab;
	public LayerMask hitLayer;
	public float explosionRadius = 5f;
	public float explosionPower = 10f;

	private GameObject explosionObject;
    private Vector3 startPosition;

    void Awake()
    {
        startPosition = transform.position;
    }

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

        Debug.Log("CollideExplosion");

        if (Vector3.SqrMagnitude(startPosition - transform.position) > 0.1f)
        {
            if (((1 << col.gameObject.layer) & hitLayer) != 0)
            {

                explosionObject = (GameObject)Instantiate(explosionPrefab, transform.position, Quaternion.identity);
                if (col.GetComponent<Fireball>() != null)
                {
                    FindObjectOfType<FreezetimeScript>().SlowTime();
                }

                HP hp = col.GetComponent<HP>();
                if (hp != null)
                {
                    //hp.DealDamage(1);
                }
                Destroy(this.gameObject);
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

}
