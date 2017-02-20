using UnityEngine;
using System.Collections;
using UnityStandardAssets.Characters.FirstPerson;

namespace ShootClub {
	public class GameManager_ToggleControl : MonoBehaviour {
		private GameManager_Master gameManagerMaster;
		private FirstPersonController player;

		void OnEnable() {
			InitializeReferences();
			gameManagerMaster.MenuToggleEvent += ToggleControl;
			gameManagerMaster.InventoryUIToggleEvent += ToggleControl;
			gameManagerMaster.GameOverEvent += ToggleControl;
		}

		void OnDisable() {
			gameManagerMaster.MenuToggleEvent -= ToggleControl;
			gameManagerMaster.InventoryUIToggleEvent -= ToggleControl;
			gameManagerMaster.GameOverEvent -= ToggleControl;
		}

		private void ToggleControl() {
			if(player != null)
				player.enabled = !player.enabled;
		}

		private void InitializeReferences() {
			gameManagerMaster = GetComponent<GameManager_Master>();
			player = GameObject.FindGameObjectWithTag("Player").GetComponent<FirstPersonController>();
		}
	}
}