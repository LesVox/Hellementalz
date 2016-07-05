using UnityEngine;
using System.Collections;

public class HandAnimations : MonoBehaviour {

	private int MyHandIndex;
	private Animator anim;

	// Use this for initialization
	void Awake () {
		anim = GetComponent<Animator> ();
	}

    void Start()
    {
        MyHandIndex = transform.parent.GetComponent<ControllerTracker>().MyIndexPublic;
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
