using UnityEngine;
using System.Collections;

public class FireballScript : MonoBehaviour {

    Rigidbody MyBody;
    private float m_Thrust;

	// Use this for initialization
	void Start ()
    {
        MyBody = GetComponent<Rigidbody>();
        m_Thrust = 100;
	}
	
	// Update is called once per frame
	void Update ()
    {
        MyBody.AddForce(MyBody.transform.forward * m_Thrust, ForceMode.Force);
        
	}

    void OnCollisionEnter()
    {
        // TODO: Damage functionality
        DestroyMe();
    }

    void DestroyMe()
    {
        Destroy(this.gameObject);
    }

}
