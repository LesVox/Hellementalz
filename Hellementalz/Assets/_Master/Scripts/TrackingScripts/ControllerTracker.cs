using UnityEngine;
using System.Collections;
using System;

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
    public Vector3 TotalMoveV;
    public float TotalMoveSqr = 0;

    private int MyIndex;

    void Update ()
    {
        Debug.Log("Controller index " + MyIndex + " down: " + SteamVR_Controller.Input(MyIndex).GetPressDown(SteamVR_Controller.ButtonMask.Trigger));
        if (SteamVR_Controller.Input(MyIndex).GetPressDown(SteamVR_Controller.ButtonMask.Trigger) && IsTracking == false)
        {
            IsTracking = true;
            OriginalPos = gameObject.transform.position;
        }
        if (IsTracking)
        {
            Debug.Log("is tracking");
            TrackerCount += Time.deltaTime;
            TrackMovement();
        }
        if(SteamVR_Controller.Input(MyIndex).GetPressUp(SteamVR_Controller.ButtonMask.Trigger) || TrackerCount >= TrackerCountMax)
        {
            IsTracking = false;
            TotalMoveV = new Vector3(0, 0, 0);
            TotalMoveSqr = 0;
            OriginalPos = new Vector3(0, 0, 0);
            TrackerCount = 0;
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
    
    public void SetDeviceIndex(int index)
    {
        if (Enum.IsDefined(typeof(SteamVR_TrackedObject.EIndex), index))
            MyIndex = index;
    }
}
