using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class GameManager_ToggleCursor : MonoBehaviour {
		private GameManager_Master gameManagerMaster;
		public bool isCursorLocked;

		void OnEnable() {
			InitializeReferences();
			gameManagerMaster.MenuToggleEvent += ToggleCursor;
			gameManagerMaster.InventoryUIToggleEvent += ToggleCursor;
			gameManagerMaster.GameOverEvent += ToggleCursor;
		}

		void OnDisable() {
			gameManagerMaster.MenuToggleEvent -= ToggleCursor;
			gameManagerMaster.InventoryUIToggleEvent -= ToggleCursor;
			gameManagerMaster.GameOverEvent -= ToggleCursor;			
		}

		void Update () {
			CheckIfCursorShouldBeLocked();
		}

		private void ToggleCursor() {
			isCursorLocked = !isCursorLocked;
		}

		private void CheckIfCursorShouldBeLocked() {
			if(isCursorLocked) {
				Cursor.lockState = CursorLockMode.Locked;
				Cursor.visible = false;
			}
			else {
				Cursor.lockState = CursorLockMode.None;
				Cursor.visible = true;
			}
		}

		private void InitializeReferences() {
			gameManagerMaster = GetComponent<GameManager_Master>();
		}
	}
}