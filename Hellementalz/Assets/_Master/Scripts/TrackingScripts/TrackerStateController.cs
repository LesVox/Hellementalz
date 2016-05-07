using UnityEngine;
using System.Collections;

public class TrackerStateController : MonoBehaviour {

    [SerializeField]
    ControllerTracker Controller1;
    [SerializeField]
    ControllerTracker Controller2;
    ControllerTracker ActiveHand = null;
    ControllerTracker OffHand = null;
    #region Spells
    public float FireballDemand = .1f;
    public float FireballSqr(ControllerTracker Controller)
    {
        if (Controller == null)
            return 0;
        return new Vector3(Controller.TotalMoveV.x, 0, Controller.TotalMoveV.z).sqrMagnitude;
    }

    #endregion

	void Update ()
    {
        Debug.Log("Is tracking: " + (Controller1.IsTracking || Controller2.IsTracking));
	    if(Controller1.IsTracking || Controller2.IsTracking)
        {
            DetermineSpell();
           // Debug.Log("Tracking is working");
        }
	}

    void DetermineHand()
    {
        if (Controller1.IsTracking && Controller1.TotalMoveSqr > Controller2.TotalMoveSqr)
        {
            ActiveHand = Controller1;
            OffHand = Controller2;
        }
        if (Controller2.IsTracking && Controller1.TotalMoveSqr < Controller2.TotalMoveSqr)
        {
            ActiveHand = Controller2;
            OffHand = Controller1;
        }
    }
    

    void DetermineSpell()
    {
        DetermineHand();
        //Debug.Log("Active hand = " + ActiveHand);
        //Debug.Log("FireballSqr = " + FireballSqr(ActiveHand));
        Debug.Log(1);
        if (FireballSqr(ActiveHand) >= FireballDemand * FireballDemand)
        {
            Debug.Log(2);
            if (FireballSqr(OffHand) >= (FireballDemand * FireballDemand) / 2)
            {
                Debug.Log(3);
                SpellFactory.CastStrongFireball(ActiveHand.transform.position, ActiveHand.TotalMoveV.normalized);
            }
            else
            {
                Debug.Log(4);
                SpellFactory.CastLightFireball(ActiveHand.transform.position, ActiveHand.TotalMoveV.normalized);
            }
        }

    }

    
    

}
