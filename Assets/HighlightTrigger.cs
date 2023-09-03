using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class HighlightTrigger : MonoBehaviour
{
    public Outline outlineScript;
    public float highlightDistance = 5f;  // Distance within which the capsule should be highlighted
    public Transform itemPos;
    public string storyStitch;
    public bool isCutsceneTrigger;
    public List<GameObject> turnOffObjects;
    public List<GameObject> turnOnObjects;
    public string cutsceneStory;
    public string nextScene;

    public bool isCutsceneStoryDone = false;

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

    public void TriggerCutscene()
    {
        if (isCutsceneTrigger)
        {
            foreach(var obj in turnOffObjects)
            {
                obj.SetActive(false);
            }

            StartCoroutine(InkStoryPlayer.instance.CutsceneDialogue(turnOnObjects, cutsceneStory));

            
        }
    }

    public void MoveToNextScene()
    {
        if(isCutsceneStoryDone)
        {
            StartCoroutine(WaitBeforeScene());
        }
    }

    IEnumerator WaitBeforeScene()
    {
        yield return new WaitForSeconds(3);
        if (!String.IsNullOrEmpty(nextScene))
        {

            SceneManager.LoadScene(nextScene);
        }
        else
        {
            SceneManager.LoadScene("End");
        }
    }
}
