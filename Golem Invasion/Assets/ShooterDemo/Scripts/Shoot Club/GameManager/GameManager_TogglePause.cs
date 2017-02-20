using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class GameManager_TogglePause : MonoBehaviour {
		private GameManager_Master gameManagerMaster;
		public bool isPaused;

		void OnEnable() {
			InitializeReferences();
			gameManagerMaster.MenuToggleEvent += TogglePause;
			gameManagerMaster.InventoryUIToggleEvent += TogglePause;
			gameManagerMaster.RestartLevelEvent += TogglePause;
		}

		void OnDisable() {
			gameManagerMaster.MenuToggleEvent -= TogglePause;
			gameManagerMaster.InventoryUIToggleEvent -= TogglePause;
			gameManagerMaster.RestartLevelEvent -= TogglePause;
		}

		void Start() {
			Time.timeScale = 1;
		}

		private void InitializeReferences() {
			isPaused = false;
			gameManagerMaster = GetComponent<GameManager_Master>();
		}

		private void TogglePause() {
			if(isPaused) {
				Time.timeScale = 1;
				isPaused = false;
			}
			else {
				Time.timeScale = 0;
				isPaused = true;
			}
		}
	}
}
