using UnityEngine;
using System.Collections;

public class TrackerStateController : MonoBehaviour {

    [SerializeField]
    ControllerTracker Controller1;
    [SerializeField]
    ControllerTracker Controller2;
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
    public float WallSqr(ControllerTracker Controller)
    {
        if (Controller == null)
            return 0;
        return new Vector3(0, Controller.TotalMoveV.y, 0).sqrMagnitude;
    }

    #endregion

    void Update ()
    {
	    if(Controller1.IsTracking || Controller2.IsTracking)
        {
            DetermineSpell();
           // Debug.Log("Tracking is working");
        }

        if (SpellCooldown > -0.0001f)
            SpellCooldown += Time.deltaTime;
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
        if (SpellCooldown >= SpellCooldownMax || SpellCooldown < -0.0001f)
        {
            //Off cooldown, cast spell
            Debug.Log("1");
            DetermineHand();

            if (FireballSqr(ActiveHand) >= FireballDemand * FireballDemand)
            {
                Debug.Log(2);
                if (FireballSqr(OffHand) >= (FireballDemand * FireballDemand) / 2)
                {
                    Debug.Log(3);
                    SpellFactory.CastStrongFireball(ActiveHand.transform.position, ActiveHand.TotalMoveV.normalized);
                    SpellCooldown = 0;
                }
                else
                {
                    Debug.Log(4);
                    SpellFactory.CastLightFireball(ActiveHand.transform.position, ActiveHand.TotalMoveV.normalized);
                    SpellCooldown = 0;
                }
            }

            if (WallSqr(ActiveHand) >= WallDemand && WallSqr(OffHand) >= WallDemand / 2)
            {
                Vector3 Offset = Vector3.Cross(ActiveHand.transform.position - OffHand.transform.position, Vector3.down).normalized;
                Vector3 OriginPosition = ActiveHand.transform.position - OffHand.transform.position;
                OriginPosition.x /= 2;
                OriginPosition.y /= 2;
                
                SpellFactory.CastWall(OriginPosition + (Offset * WallOriginOffset));
                SpellCooldown = 0;
            }
            

        }

    }
}
