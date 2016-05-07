using UnityEngine;
using System.Collections;

public class AnimatorSetTrigger : MonoBehaviour {

	public string triggerName;
	public float delay;

	private Animator anim;

	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator> ();
	}

	void OnEnable(){
		Invoke ("ActivateAnimTrigger", delay);
	}

	void ActivateAnimTrigger(){
		if (triggerName != string.Empty && anim != null) {
			anim.SetTrigger (triggerName);
		}
	}
		
}
