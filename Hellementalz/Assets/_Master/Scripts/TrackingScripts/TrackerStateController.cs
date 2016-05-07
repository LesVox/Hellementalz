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

    public float FireballDemand = 1;
    public float FireballSqr(ControllerTracker Controller)
    {
        return new Vector3(Controller.TotalMoveV.x, 0, Controller.TotalMoveV.z).sqrMagnitude;
    }

    #endregion

	void Update ()
    {
	    if(Controller1.IsTracking || Controller2.IsTracking)
        {
            DetermineSpell();
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
                
        if(FireballSqr(ActiveHand) >= FireballDemand * FireballDemand)
        {
            if(FireballSqr(OffHand) >= (FireballDemand * FireballDemand) / 2)
            {
                SpellFactory.CastStrongFireball(ActiveHand.transform.position, ActiveHand.TotalMoveV.normalized);
            }
            SpellFactory.CastLightFireball(ActiveHand.transform.position, ActiveHand.TotalMoveV.normalized);
        }

    }

    
    

}
