using UnityEngine;
public class DisableInBuild : MonoBehaviour
{
    public new bool enabled = true;
#if !UNITY_EDITOR
    // Use this for initialization
    void Awake ()
    {
        if (enabled)
            Destroy(gameObject);
    }
#endif
}
