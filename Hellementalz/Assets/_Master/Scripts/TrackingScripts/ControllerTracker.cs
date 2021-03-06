﻿using UnityEngine;
using System.Collections;
using System;

public class ControllerTracker : MonoBehaviour {
    
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
    public int MyIndexPublic { get { return MyIndex; } }

    void Update ()
    {
        SteamVR_Controller.Device controller = SteamVR_Controller.Input(MyIndex);

        if (controller.GetPressDown(SteamVR_Controller.ButtonMask.Trigger) && IsTracking == false)
        {
            IsTracking = true;
            OriginalPos = gameObject.transform.position;
        }
        if (IsTracking)
        {
            TrackerCount += Time.deltaTime;
            TrackMovement();
            controller.TriggerHapticPulse();
        }
        if(controller.GetPressUp(SteamVR_Controller.ButtonMask.Trigger)/* || TrackerCount >= TrackerCountMax*/)
        {
            IsTracking = false;
            TotalMoveV = Vector3.zero;
            TotalMoveSqr = 0;
            OriginalPos = Vector3.zero;
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
