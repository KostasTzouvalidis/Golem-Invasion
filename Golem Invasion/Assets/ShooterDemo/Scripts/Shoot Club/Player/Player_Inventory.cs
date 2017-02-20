using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

namespace ShootClub {
	public class Player_Inventory : MonoBehaviour {
		public Transform inventoryPlayerParent;
		public Transform inventoryUIParent;
		public GameObject uiButton;

		private Player_Master playerMaster;
		private GameManager_ToggleInventoryUI inventoryUI;
		private float timeToPlaceInHands;
		private Transform currentlyHeldItem;
		private int counter;
		private string buttonText;
		private List<Transform> inventoryList;

		void OnEnable() {
			InitializeReferences();
			UpdateInventoryList();
			CheckHandIsEmpty();

			playerMaster.EventInventoryChanged += UpdateInventoryList;
			playerMaster.EventInventoryChanged += CheckHandIsEmpty;
			playerMaster.EventHandsEmpty += ClearHands;
		}
		
		void OnDisable() {
			playerMaster.EventInventoryChanged -= UpdateInventoryList;
			playerMaster.EventInventoryChanged -= CheckHandIsEmpty;
			playerMaster.EventHandsEmpty -= ClearHands;
		}

		public void ActivateInventoryItem(int inventoryIndex) {
			DeactivateAllInventoryItems();
			StartCoroutine(PlaceItemInHands(inventoryList[inventoryIndex]));
		}
		
		public void DeactivateAllInventoryItems() {
			foreach(Transform child in inventoryPlayerParent) {
				if(child.CompareTag("ItemHoldable")) {
					child.gameObject.SetActive(false);
				}
			}
		}

		private void UpdateInventoryList() {
			counter = 0;
			inventoryList.Clear();
			//Empty entries are gonna get removed
			inventoryList.TrimExcess();
			ClearInventoryUI();
			foreach(Transform child in inventoryPlayerParent) {
				if(child.CompareTag("ItemHoldable")) {
					inventoryList.Add (child);
					GameObject go = Instantiate(uiButton) as GameObject;
					buttonText = child.name;
					go.GetComponentInChildren<Text>().text = buttonText;

					int index = counter;
					go.GetComponent<Button>().onClick.AddListener(delegate {
						ActivateInventoryItem(index);
					});
					go.GetComponent<Button>().onClick.AddListener(delegate {
						inventoryUI.ToggleInventoryUI();
					});
					go.transform.SetParent(inventoryUIParent, false);
					counter++;
				}
			}
		}

		//The last item in the inventory list is always held by the player
		private void CheckHandIsEmpty() {
			if(currentlyHeldItem == null && inventoryList.Count > 0) {
				//DeactivateAllInventoryItems();
				StartCoroutine(PlaceItemInHands(inventoryList[inventoryList.Count - 1]));
			}
		}

		private void ClearHands() {
			currentlyHeldItem = null;
		}

		private void ClearInventoryUI() {
			foreach(Transform child in inventoryUIParent) {
				//child = The buttons in the inventory UI
				Destroy(child.gameObject);
			}
		}

		private IEnumerator PlaceItemInHands(Transform item) {
			yield return new WaitForSeconds(timeToPlaceInHands);
			currentlyHeldItem = item;
			currentlyHeldItem.gameObject.SetActive(true);
		}

		private void InitializeReferences() {
			playerMaster = GetComponent<Player_Master>();
			inventoryUI = GameObject.Find("_GameManager").GetComponent<GameManager_ToggleInventoryUI>();
			inventoryList = new List<Transform>();
			timeToPlaceInHands = 0.1f;
		}
	}
}