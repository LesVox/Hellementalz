using UnityEngine;
using System.Collections;

public class HandAnimations : MonoBehaviour {

	public int MyHandIndex = 2;
	private Animator anim;

	// Use this for initialization
	void Awake () {
		anim = GetComponent<Animator> ();
	}
	
	// Update is called once per frame
	void Update () {
		if (SteamVR_Controller.Input (MyHandIndex).GetPressDown (SteamVR_Controller.ButtonMask.Trigger)) {
			anim.SetTrigger ("Activate");	
		} else if (SteamVR_Controller.Input (MyHandIndex).GetPressUp (SteamVR_Controller.ButtonMask.Trigger)) {
			anim.SetTrigger ("Deactivate");	
		} 

	}
}
