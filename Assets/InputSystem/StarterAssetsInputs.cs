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
		public bool dialog = true;

		[Header("Movement Settings")]
		public bool analogMovement;

		[Header("Mouse Cursor Settings")]
		public bool cursorLocked = true;
		public bool cursorInputForLook = true;

        public void OnMove(InputValue value)
		{
			if(!dialog)
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
			if(!dialog)
				JumpInput(value.isPressed);
		}

		public void OnSprint(InputValue value)
		{
			if (!dialog)
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
			if (dialog)
			{
				InkStoryPlayer.instance.MakeChoice(0);
				if (GameManager.instance.IsStoryOver)
				{
					dialog = false;
				}
			}
		}

		public void OnOption2(InputValue value)
		{
			if (dialog)
			{
                InkStoryPlayer.instance.MakeChoice(1);
                if (GameManager.instance.IsStoryOver)
                {
                    dialog = false;
                }
            }
		}

		public void OnOption3(InputValue value)
		{
			if (dialog)
			{
                InkStoryPlayer.instance.MakeChoice(2);
                if (GameManager.instance.IsStoryOver)
                {
                    dialog = false;
                }
            }
		}

		public void OnOption4(InputValue value)
		{
			if (dialog)
			{
                InkStoryPlayer.instance.MakeChoice(3);
                if (GameManager.instance.IsStoryOver)
                {
                    dialog = false;
                }
            }
		}

		public void DialogueInput(bool isPressed)
		{
			this.dialog = !this.dialog;
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
    }
	
}