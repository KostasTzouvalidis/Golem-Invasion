using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class GameManager_GameOver : MonoBehaviour {
		public GameObject gameOver;
		private GameManager_Master gameManagerMaster;

		void OnEnable() {
			InitializeReferences();
			gameManagerMaster.GameOverEvent += GameOverPanelOn;
		}
		
		void OnDisable() {
			gameManagerMaster.GameOverEvent -= GameOverPanelOn;
		}

		private void GameOverPanelOn() {
			if(gameOver != null) {
				gameOver.SetActive(true);
			}
		}

		private void InitializeReferences() {
			gameManagerMaster = GetComponent<GameManager_Master>();
		}
	}
}