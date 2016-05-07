using UnityEngine;
using System.Collections;

public class RotationScript : MonoBehaviour {
	[SerializeField]
	private float value;

	[SerializeField]
	private bool Up;
	
	// Update is called once per frame
	void Update ()
	{
		if (Up)
		{
			transform.Rotate (Vector3.up * value);
		}
		else
		{
			transform.Rotate (Vector3.forward * value);
		}
	}
}