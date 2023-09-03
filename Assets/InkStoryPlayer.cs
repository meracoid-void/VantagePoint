using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.UI;
using TMPro;
using System;
using StarterAssets;

public class InkStoryPlayer : MonoBehaviour
{
    public static InkStoryPlayer instance;
    public Button[] options;
    public TextMeshProUGUI textArea;
    public TextAsset inkJSONAsset;
    private Story story;

    void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);  // Optional: if you want this object to persist between scenes
        }
        else
        {
            Destroy(gameObject);  // Destroy additional instances
        }
    }

    void Start()
    {
        GameManager.instance.IsStoryOver = false;
        story = new Story(inkJSONAsset.text);
        StartStoryAt("Intro");
    }

    public void StartStoryAt(string knot)
    {
        GameManager.instance.IsStoryOver = false;
        options[0].transform.parent.gameObject.SetActive(true);
        Debug.Log(knot);
        story.ChoosePathString(knot);
        StartStory();
    }

    void StartStory()
    {
        // To get the current content:
        
        string content = story.ContinueMaximally();

        // Display the content (e.g., using a UI Text component)
        textArea.text = content;

        if(story.currentChoices.Count > 0)
        {
            if (story.currentChoices.Count < 4)
            {
                options[3].gameObject.SetActive(false);
                if (story.currentChoices.Count < 3)
                {
                    options[2].gameObject.SetActive(false);
                    if (story.currentChoices.Count < 2)
                    {
                        options[1].gameObject.SetActive(false);
                    }
                }
            }

            // To get choices:
            for (int i = 0; i < story.currentChoices.Count; ++i)
            {
                Choice choice = story.currentChoices[i];
                Debug.Log("Choice " + (i + 1) + ". " + choice.text);
                options[i].gameObject.GetComponentInChildren<ChoiceHandler>().choice = choice;
                options[i].gameObject.SetActive(true);
                var text = options[i].GetComponentInChildren<TextMeshProUGUI>();
                text.text = choice.text;
            }
        }
        else
        {
            StartCoroutine(EndStory());
        }

    }

    IEnumerator EndStory()
    {
        foreach(var choice in options)
        {
            choice.gameObject.SetActive(false);
        }
        GameManager.instance.IsStoryOver = true;
        yield return new WaitForSeconds(2);
        options[0].transform.parent.gameObject.SetActive(false);

    }

    // Call this function with the index of the choice to continue the story.
    public void MakeChoice(int choiceIndex)
    {
        if (IsValidIndex(choiceIndex))
        {
            var choice = options[choiceIndex].gameObject.GetComponentInChildren<ChoiceHandler>();
            story.ChooseChoiceIndex(choice.choice.index);
            StartStory();
        }
    }

    private bool IsValidIndex(int choiceIndex)
    {
        return options[choiceIndex].gameObject.activeInHierarchy;
    }
}
