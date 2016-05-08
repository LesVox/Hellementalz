using UnityEngine;
using System.Collections;

public class Wall : MonoBehaviour
{
    public void SpawnWall(Vector3 origin, Vector3 lookAt)
    {
        transform.position = origin;
        transform.LookAt(lookAt);

        gameObject.SetActive(true);
    }

    void Awake()
    {
        gameObject.SetActive(false);
    }
}
