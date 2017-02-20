using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class GameManager_Master : MonoBehaviour {
		public delegate void GameManagerEventHandler();
		public delegate void ShootingTargetEventHandler();

		public event GameManagerEventHandler MenuToggleEvent;
		public event GameManagerEventHandler InventoryUIToggleEvent;
		public event GameManagerEventHandler RestartLevelEvent;
		public event GameManagerEventHandler GoToMenuEvent;
		public event GameManagerEventHandler GameOverEvent;

		public event ShootingTargetEventHandler ShootingTargetsKilledEvent;
		public event ShootingTargetEventHandler ExplodingTargetsKilledEvent;

		public bool isGameOver;
		public bool isInventoryUIOn;
		public bool isMenuOn;

		public void CallEventMenuToggle() {
			if(MenuToggleEvent != null)
				MenuToggleEvent();
		}

		public void CallEventInventoryUIToggle() {
			if(InventoryUIToggleEvent != null)
				InventoryUIToggleEvent();
		}

		public void CallEventRestartLevel() {
			if(RestartLevelEvent != null)
				RestartLevelEvent();
		}

		public void CallEventGoToMenu() {
			if(GoToMenuEvent != null)
				GoToMenuEvent();
		}

		public void CallEventGameOver() {
			if(GameOverEvent != null)
				GameOverEvent();
		}

		public void CallEventShootingTargetsKilled() {
			if(ShootingTargetsKilledEvent != null)
				ShootingTargetsKilledEvent();
		}

		public void CallEventExplodingTargetsKilled() {
			if(ExplodingTargetsKilledEvent != null)
				ExplodingTargetsKilledEvent();
		}
	}
}