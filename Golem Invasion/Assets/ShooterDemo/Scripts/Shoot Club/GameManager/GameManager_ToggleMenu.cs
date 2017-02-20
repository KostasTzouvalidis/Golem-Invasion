using UnityEngine;
using System.Collections;
namespace ShootClub {
	public class GameManager_ToggleMenu : MonoBehaviour {
		private GameManager_Master gameManagerMaster;
		public GameObject menu;

		void OnEnable() {
			InitializeReferences();
			gameManagerMaster.MenuToggleEvent += ToggleMenu;
		}

		void OnDisable() {
			gameManagerMaster.MenuToggleEvent -= ToggleMenu;
		}

		void Update () {
			CheckForToggleMenu();
		}

		private void CheckForToggleMenu() {
			if(Input.GetKeyUp(KeyCode.Escape) && !gameManagerMaster.isGameOver && !gameManagerMaster.isInventoryUIOn) {
				gameManagerMaster.CallEventMenuToggle();
			}
		}

		private void ToggleMenu() {
			if(Application.loadedLevel != 0) {
				if(menu != null) {
					//If the gameobject menu is deactivated, activate it!
					menu.SetActive(!menu.activeSelf);
					gameManagerMaster.isMenuOn = !gameManagerMaster.isMenuOn;
				}
				else
					Debug.LogWarning("Scene: " + Application.loadedLevelName +" - Assign a UI gameobject to the "
					                 + this.name + " gameobject in the inspector.");
			}
		}
		
		private void InitializeReferences() {
			gameManagerMaster = GetComponent<GameManager_Master>();
		}
	}
}