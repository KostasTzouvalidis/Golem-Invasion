using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Item_PickUp : MonoBehaviour {
		private Item_Master itemMaster;

		void OnEnable() {
			InitializeReferences();
			itemMaster.EventPickUpAction += CarryOutPickUpActions;
			itemMaster.EventJustPickUpAction += CarryOutJustPickUpActions;
		}
		
		void OnDisable() {
			itemMaster.EventPickUpAction -= CarryOutPickUpActions;
			itemMaster.EventJustPickUpAction -= CarryOutJustPickUpActions;
		}

		private void CarryOutPickUpActions(Transform parent) {
			this.transform.SetParent(parent);
			itemMaster.CallEventObjectPickUp();
			transform.gameObject.SetActive(false);
		}

		private void CarryOutJustPickUpActions(Transform parent) {
			this.transform.SetParent(parent);
			itemMaster.CallEventJustObjectPickUp();
			parent.parent.GetComponent<Player_Inventory>().DeactivateAllInventoryItems();
		}
		
		private void InitializeReferences() {
			itemMaster = this.GetComponent<Item_Master>();			
		}
	}
}