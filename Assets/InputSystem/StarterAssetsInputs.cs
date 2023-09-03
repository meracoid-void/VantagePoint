using System;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.UI;

namespace StarterAssets
{
	public class StarterAssetsInputs : MonoBehaviour
	{
		[Header("Character Input Values")]
		public Vector2 move;
		public Vector2 look;
		public bool jump;
		public bool sprint;

		[Header("Movement Settings")]
		public bool analogMovement;

		[Header("Mouse Cursor Settings")]
		public bool cursorLocked = true;
		public bool cursorInputForLook = true;

        public void OnMove(InputValue value)
		{
			if(!GameManager.instance.IsInDialog)
				MoveInput(value.Get<Vector2>());
		}

		public void OnLook(InputValue value)
		{
			if (cursorInputForLook)
			{
				LookInput(value.Get<Vector2>());
			}
		}

		public void OnJump(InputValue value)
		{
			if(!GameManager.instance.IsInDialog)
				JumpInput(value.isPressed);
		}

		public void OnSprint(InputValue value)
		{
			if (!GameManager.instance.IsInDialog)
				SprintInput(value.isPressed);
		}

		public void OnSubmit(InputValue value)
		{
            HighlightTrigger characterToTalkTo = GameManager.instance.highlightedCharacter;
            if (characterToTalkTo != null)
            {
	            DialogueInput(value.isPressed);
                characterToTalkTo.InitiateDialogue();
            }
        }

		public void OnOption1(InputValue value)
		{
			if (GameManager.instance.IsInDialog)
			{
				InkStoryPlayer.instance.MakeChoice(0);
                SetEndState();
            }
		}

		public void OnOption2(InputValue value)
		{
			if (GameManager.instance.IsInDialog)
			{
                InkStoryPlayer.instance.MakeChoice(1);
                SetEndState();
            }
		}

		public void OnOption3(InputValue value)
		{
			if (GameManager.instance.IsInDialog)
			{
                InkStoryPlayer.instance.MakeChoice(2);
				SetEndState();
            }
		}

		public void OnOption4(InputValue value)
		{
			if (GameManager.instance.IsInDialog)
			{
                InkStoryPlayer.instance.MakeChoice(3);
				SetEndState();
            }
		}

		public void DialogueInput(bool isPressed)
		{
            GameManager.instance.IsInDialog = !GameManager.instance.IsInDialog;
		}

		public void MoveInput(Vector2 newMoveDirection)
		{
			move = newMoveDirection;
		} 

		public void LookInput(Vector2 newLookDirection)
		{
			look = newLookDirection;
		}

		public void JumpInput(bool newJumpState)
		{
			jump = newJumpState;
		}

		public void SprintInput(bool newSprintState)
		{
			sprint = newSprintState;
		}
		
		private void OnApplicationFocus(bool hasFocus)
		{
			SetCursorState(cursorLocked);
		}

		private void SetCursorState(bool newState)
		{
			Cursor.lockState = newState ? CursorLockMode.Locked : CursorLockMode.None;
		}

		private void SetEndState()
		{
            if (GameManager.instance.IsStoryOver)
            {
                GameManager.instance.IsInDialog = false;
                HighlightTrigger characterToTalkTo = GameManager.instance.highlightedCharacter;
				if(characterToTalkTo != null)
				{
					if (characterToTalkTo.isCutsceneTrigger && !characterToTalkTo.isCutsceneStoryDone)
					{
                        GameManager.instance.IsInDialog = true;
                        characterToTalkTo.TriggerCutscene();
					}
					else if (characterToTalkTo.isCutsceneTrigger && characterToTalkTo.isCutsceneStoryDone)
					{
						characterToTalkTo.MoveToNextScene();
					}
				}
                
            }
        }
    }
	
}