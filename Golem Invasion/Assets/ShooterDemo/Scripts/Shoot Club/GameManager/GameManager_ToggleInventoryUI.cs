using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class GameManager_ToggleInventoryUI : MonoBehaviour {
		private GameManager_Master gameManagerMaster;
		[Tooltip("Does this game have an inventory? (True or False)")]
		public bool hasInventory;
		public GameObject inventoryUI;
		public string inventoryToggleButton;

		void Start () {
			InitializeReferences();
		}

		void Update () {
			CheckForInventoryRequest();
		}
		
		public void ToggleInventoryUI() {
			if(inventoryUI != null) {
				inventoryUI.SetActive(!inventoryUI.activeSelf);
				gameManagerMaster.isInventoryUIOn = !gameManagerMaster.isInventoryUIOn;
				gameManagerMaster.CallEventInventoryUIToggle();
			}
		}

		private void CheckForInventoryRequest() {
			if(Input.GetButtonUp(inventoryToggleButton) && !gameManagerMaster.isGameOver && !gameManagerMaster.isMenuOn
			   && hasInventory) {
				ToggleInventoryUI(); 
			}
		}

		private void InitializeReferences() {
			gameManagerMaster = GetComponent<GameManager_Master>();
			if(inventoryToggleButton == "") {
				Debug.LogWarning("Scene: " + Application.loadedLevelName + " - Please type the name of " +
				                 "the toggle button in GameManager_ToggleInventoryUI");
				this.enabled = false;
			}
		}
	}
}