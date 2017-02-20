using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class GameManager_Restart : MonoBehaviour {
		private GameManager_Master gameManagerMaster;

		void OnEnable() {
			InitializeReferences();
			gameManagerMaster.RestartLevelEvent += RestartLevel;
		}
		
		void OnDisable() {
			gameManagerMaster.RestartLevelEvent -= RestartLevel;
		}

		private void RestartLevel() {
			Application.LoadLevel(Application.loadedLevel);
		}

		private void InitializeReferences() {
			gameManagerMaster = GetComponent<GameManager_Master> ();
		}
	}
}