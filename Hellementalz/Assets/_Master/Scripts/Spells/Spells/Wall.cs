using UnityEngine;
using System.Collections;

public class Wall : MonoBehaviour
{
    public void SpawnWall(Vector3 origin)
    {
        transform.position = origin;
        gameObject.SetActive(true);
    }

    void Awake()
    {
        gameObject.SetActive(false);
    }
}
