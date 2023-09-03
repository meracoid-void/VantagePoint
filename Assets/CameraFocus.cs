using UnityEngine;

public class CameraFocus : MonoBehaviour
{
    public Transform target; // The target game object you want to focus on
    public float focusSpeed = 2.0f; // The speed at which the camera focuses on the target

    public void FocusOnTarget()
    {
        Debug.Log("Starting Focus");
        // Calculate the direction from the camera to the target
        Vector3 direction = target.position - transform.position;
        direction.y = 0; // Keep the camera's vertical angle unchanged

        Debug.Log(direction);

        // Calculate the desired rotation
        Quaternion targetRotation = Quaternion.LookRotation(direction);

        // Smoothly rotate the camera
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, focusSpeed * Time.deltaTime);

    }
}