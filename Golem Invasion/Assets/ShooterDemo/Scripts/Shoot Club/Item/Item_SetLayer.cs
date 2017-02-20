using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Item_SetLayer : MonoBehaviour {
		private Item_Master itemMaster;
		public string itemPickUpLayer;
		public string itemThrowLayer;

		void OnEnable() {
			InitializeReferences();
			itemMaster.EventObjectPickUp += SetItemPickUpLayer;
			itemMaster.EventObjectThrow += SetItemThrowLayer;
		}
		
		void OnDisable() {
			itemMaster.EventObjectPickUp -= SetItemPickUpLayer;
			itemMaster.EventObjectThrow -= SetItemThrowLayer;
		}
		
		void Start () {
			SetLayerOnEnable();
		}

		private void SetItemPickUpLayer() {
			SetLayer(this.transform, itemPickUpLayer);
		}

		private void SetItemThrowLayer() {
			SetLayer(this.transform, itemThrowLayer);
		}

		private void SetLayerOnEnable() {
			if(itemPickUpLayer == "")
				itemPickUpLayer = "Item";

			if(itemThrowLayer == "")
				itemThrowLayer = "Item";

			if(this.transform.root.CompareTag(GameManager_References._playerTag))
				SetItemPickUpLayer();
			else
				SetItemThrowLayer();
		}

		private void SetLayer(Transform itemT, string itemLayer) {
			itemT.gameObject.layer = LayerMask.NameToLayer(itemLayer);
			foreach(Transform child in itemT) {
				SetLayer(child, itemLayer);
			}
		}
		
		private void InitializeReferences() {
			itemMaster = this.GetComponent<Item_Master>();	
		}
	}
}