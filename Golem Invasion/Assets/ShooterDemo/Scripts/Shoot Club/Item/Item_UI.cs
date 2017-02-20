using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Item_UI : MonoBehaviour {
		private Item_Master itemMaster;
		public GameObject myUI;

		void OnEnable() {
			InitializeReferences();
			itemMaster.EventObjectThrow += DisableUI;
			itemMaster.EventObjectPickUp += EnableUI;
		}
		
		void OnDisable() {
			itemMaster.EventObjectThrow -= DisableUI;	
			itemMaster.EventObjectPickUp -= EnableUI;		
		}

		private void EnableUI() {
			if(myUI != null)
				myUI.SetActive(true);
		}

		private void DisableUI() {
			if(myUI != null)
				myUI.SetActive(false);
		}

		private void InitializeReferences() {
			itemMaster = this.GetComponent<Item_Master>();	
		}
	}
}