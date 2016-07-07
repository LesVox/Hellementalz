using UnityEngine;
using System.Collections;

public class HandTrackingParticle : MonoBehaviour {

	public ControllerTracker controller;
	private EffectSettings effect;

	// Use this for initialization
	void Start () {
		effect = GetComponent<EffectSettings> ();
	}
	
	// Update is called once per frame
	void Update () {
		if (controller != null && effect != null) {
			if (controller.IsTracking) {
				effect.IsVisible = true;
			} else
				effect.IsVisible = false;
		}			
	}
}
