using UnityEngine;
using System.Collections;

public class TrackerStateController : MonoBehaviour {

    [SerializeField]
    ControllerTracker LeftController;
    [SerializeField]
    ControllerTracker RightController;
    ControllerTracker ActiveHand = null;
    ControllerTracker OffHand = null;

    private float SpellCooldown = 0;
    private float SpellCooldownMax = .5f;

    #region Spells

    public float FireballDemand = .1f;
    public float FireballSqr(ControllerTracker Controller)
    {
        if (Controller == null)
            return 0;
        return new Vector3(Controller.TotalMoveV.x, 0, Controller.TotalMoveV.z).sqrMagnitude;
    }

    public float WallOriginOffset = 1;
    public float WallDemand = .1f;
    public float WallVY(ControllerTracker Controller)
    {
        if (Controller == null)
            return 0;
        return Controller.TotalMoveV.y;
    }

    #endregion

    void Update ()
    {
	    if(LeftController.IsTracking || RightController.IsTracking)
        {
            DetermineSpell();
           // Debug.Log("Tracking is working");
        }

        if (SpellCooldown > -0.0001f)
            SpellCooldown += Time.deltaTime;
    }

    void DetermineHand()
    {
        if (LeftController.IsTracking && LeftController.TotalMoveSqr > RightController.TotalMoveSqr)
        {
            ActiveHand = LeftController;
            OffHand = RightController;
        }
        if (RightController.IsTracking && LeftController.TotalMoveSqr < RightController.TotalMoveSqr)
        {
            ActiveHand = RightController;
            OffHand = LeftController;
        }
    }
    

    void DetermineSpell()
    {
        if (SpellCooldown >= SpellCooldownMax || SpellCooldown < -0.0001f)
        {
            //Off cooldown, cast spell
            DetermineHand();

            if (FireballSqr(ActiveHand) >= FireballDemand * FireballDemand)
            {
                if (FireballSqr(OffHand) >= (FireballDemand * FireballDemand) / 2)
                {
                    SpellFactory.CastStrongFireball(ActiveHand.transform.position, ActiveHand.TotalMoveV.normalized);
                    SpellCooldown = 0;
                }
                else
                {
                    SpellFactory.CastLightFireball(ActiveHand.transform.position, ActiveHand.TotalMoveV.normalized);
                    SpellCooldown = 0;
                }
            }

            if (WallVY(ActiveHand) >= WallDemand && WallVY(OffHand) >= WallDemand / 2)
            {
                Vector3 Offset = Vector3.Cross(LeftController.transform.position - RightController.transform.position, Vector3.down).normalized;
                Vector3 OriginPosition = ActiveHand.transform.position - OffHand.transform.position;
                OriginPosition.x /= 2;
                OriginPosition.y /= 2;
                
                SpellFactory.CastWall(OriginPosition + (Offset * WallOriginOffset));
                SpellCooldown = 0;
            }
            

        }

    }
}
