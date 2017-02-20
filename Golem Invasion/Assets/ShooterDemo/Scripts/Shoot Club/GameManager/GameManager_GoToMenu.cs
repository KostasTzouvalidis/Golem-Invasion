using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class GameManager_GoToMenu : MonoBehaviour {

		private GameManager_Master gameManagerMaster;

		void OnEnable() {
			InitializeReferences();
			gameManagerMaster.GoToMenuEvent += GoToMenu;
		}

		void OnDisable() {
			gameManagerMaster.GoToMenuEvent -= GoToMenu;
		}

		private void GoToMenu() {
			Application.LoadLevel(0);
		}

		private void InitializeReferences() {
			gameManagerMaster = GetComponent<GameManager_Master>();
		}
	}
}