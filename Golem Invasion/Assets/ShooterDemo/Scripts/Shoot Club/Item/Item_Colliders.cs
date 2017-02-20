using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Item_Colliders : MonoBehaviour {
		private Item_Master itemMaster;
		public Collider[] colliders;
		public PhysicMaterial myPhysicMaterial;
		
		void OnEnable() {
			InitializeReferences();
			itemMaster.EventObjectThrow += EnableColliders;
			itemMaster.EventObjectPickUp += DisableColliders;			
		}
		
		void OnDisable() {
			itemMaster.EventObjectThrow -= EnableColliders;
			itemMaster.EventObjectPickUp -= DisableColliders;			
		}

		void Start () {
			CheckIfStartsInInventory();
		}

		private void CheckIfStartsInInventory() {
			if(this.transform.root.CompareTag(GameManager_References._playerTag))
				DisableColliders();
		}

		private void EnableColliders() {
			if(colliders.Length > 0) {
				foreach(Collider col in colliders) {
					col.enabled = true;
					if(myPhysicMaterial != null)
						col.material = myPhysicMaterial;
				}
			}
		}

		private void DisableColliders() {
			if(colliders.Length > 0) {
				foreach(Collider col in colliders) {
					col.enabled = false;
				}
			}
		}

		private void InitializeReferences() {
			itemMaster = this.GetComponent<Item_Master>();
		}
	}
}