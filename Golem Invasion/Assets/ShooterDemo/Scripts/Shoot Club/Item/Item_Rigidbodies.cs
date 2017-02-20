using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Item_Rigidbodies : MonoBehaviour {
		private Item_Master itemMaster;
		public Rigidbody[] rigidbodies;

		void OnEnable() {
			InitializeReferences();
			itemMaster.EventObjectThrow += SetIsKinematicFalse;
			itemMaster.EventObjectPickUp += SetIsKinematicTrue;
		}
		
		void OnDisable() {
			itemMaster.EventObjectThrow -= SetIsKinematicFalse;
			itemMaster.EventObjectPickUp -= SetIsKinematicTrue;			
		}
		
		void Start () {
			CheckIfStartsInInventory();
		}
		
		void Update () {
			
		}

		private void CheckIfStartsInInventory() {
			if(this.transform.root.CompareTag(GameManager_References._playerTag))
				SetIsKinematicTrue();
		}

		private void SetIsKinematicTrue() {
			if(rigidbodies.Length > 0) {
				foreach(Rigidbody rBody in rigidbodies) {
					rBody.isKinematic = true;
				}
			}
		}

		private void SetIsKinematicFalse() {
			if(rigidbodies.Length > 0) {
				foreach(Rigidbody rBody in rigidbodies) {
					rBody.isKinematic = false;
				}
			}
		}

		private void InitializeReferences() {
			itemMaster = this.GetComponent<Item_Master>();
		}
	}
}