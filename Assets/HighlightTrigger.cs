using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HighlightTrigger : MonoBehaviour
{
    public Outline outlineScript;
    public float highlightDistance = 5f;  // Distance within which the capsule should be highlighted
    public Transform itemPos;
    public string storyStitch;

    private Transform playerTransform;

    void Start()
    {
        playerTransform = GameObject.FindGameObjectWithTag("Player").transform;  // Assuming your player has the tag "Player"
    }

    void Update()
    {
        float distanceToPlayer = Vector3.Distance(transform.position, playerTransform.position);

        if (distanceToPlayer <= highlightDistance)
        {
            outlineScript.enabled = true;
            GameManager.instance.highlightedCharacter = this;
        }
        else
        {
            outlineScript.enabled = false;
            if (GameManager.instance.highlightedCharacter == this)
            {
                GameManager.instance.highlightedCharacter = null;
            }
        }
    }

    public void InitiateDialogue()
    {
        Debug.Log("Talking Started");
        InkStoryPlayer.instance.StartStoryAt(storyStitch);
    }
}
