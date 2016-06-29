using UnityEngine;
using System.Collections;

public class CaptureScreenshot : MonoBehaviour 
{
	// Update is called once per frame
	void Update () 
	{
		if (Input.GetKeyDown (KeyCode.P)) 
		{
			Capture();
		}
	}

	private void Capture()
	{
		//Fetch all objects to be captured (needs to be done before spawning new objects)
		GameObject[] objectsToCapture = GameObject.FindObjectsOfType<GameObject>();

		//Spawn the root object
		GameObject rootObject = new GameObject();
		rootObject.name = "Screenshot";

		//Copy the objects into the root
		foreach (GameObject obj in objectsToCapture)
		{
			if (obj.transform.parent == null) //Prevent children from being added several times
			{
				GameObject newObject = Instantiate<GameObject>(obj);
				newObject.name = obj.name;
				newObject.transform.parent = rootObject.transform;
			}
		}

		//Save the screenshot to prefab
		//GameObject prefab = Resources.Load<GameObject>("Screenshot.prefab");

		//Pause the game to show the captured state
		Debug.Break();
	}
}
