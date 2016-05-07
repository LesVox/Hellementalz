using UnityEngine;
using System.Collections;

public class ControllerTracker : MonoBehaviour {

    [SerializeField]
    TrackerStateController MyController;

    private bool m_IsTracking = false;
    public bool IsTracking
    {
        get { return m_IsTracking; }
        set { m_IsTracking = value; }
    }
    private float TrackerCount = 0;
    private float TrackerCountMax = 1;

    public Vector3 OriginalPos;
    int MyIndex;
    public Vector3 TotalMoveV;
    public float TotalMoveSqr = 0;


	void Update ()
    {
        if (SteamVR_Controller.Input(MyIndex).GetHairTriggerDown() && IsTracking == false)
        {
            TrackerActivation();
            OriginalPos = gameObject.transform.position;
        }
        if (IsTracking)
        {
            TrackerCount += Time.deltaTime;
            TrackMovement();
        }
        if(SteamVR_Controller.Input(MyIndex).GetHairTriggerUp() || TrackerCount >= TrackerCountMax)
        {
            IsTracking = false;
            TotalMoveV = new Vector3(0, 0, 0);
            TotalMoveSqr = 0;
            OriginalPos = new Vector3(0, 0, 0);
        }
	}

    void TrackMovement()
    {
        TotalMoveV = gameObject.transform.position - OriginalPos;
        TotalMoveSqr = TotalMoveV.sqrMagnitude;
        
    }

    IEnumerator TrackerActivation()
    {
        IsTracking = true;
        yield return new WaitForSeconds(.5f);
    }

}
