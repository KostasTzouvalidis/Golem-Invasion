using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Item_Ammo : MonoBehaviour {
		private Item_Master itemMaster;
		private GameObject playerGO;
		public string ammoName;
		public int ammoQuantity;
		public bool isTriggerPickUp;

		void OnEnable() {
			InitializeReferences();
			itemMaster.EventObjectPickUp += PickUpAmmo;
		}
		
		void OnDisable() {
			itemMaster.EventObjectPickUp -= PickUpAmmo;
		}
		
		void Start () {
			playerGO = GameManager_References._player;
		}

		void OnTriggerEnter(Collider col) {
			if(col.CompareTag(GameManager_References._playerTag) && isTriggerPickUp)
				PickUpAmmo();
		}

		private void PickUpAmmo() {
			playerGO.GetComponent<Player_Master>().CallEventAmmoPickedUp(ammoName, ammoQuantity);
			Destroy(this.gameObject);
		}
		
		private void InitializeReferences() {
			itemMaster = this.GetComponent<Item_Master>();

			if(isTriggerPickUp) {
				if(this.GetComponent<Collider>())
					GetComponent<Collider>().isTrigger = true;
				if(this.GetComponent<Rigidbody>())
					GetComponent<Rigidbody>().isKinematic = true;
			}
		}
	}
}