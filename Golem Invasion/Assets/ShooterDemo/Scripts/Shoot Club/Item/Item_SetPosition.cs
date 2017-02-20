using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Item_SetPosition : MonoBehaviour {
		private Item_Master itemMaster;
		public Vector3 itemLocalPosition;
		public Quaternion itemRotation;
		
		void OnEnable() {
			InitializeReferences();
			itemMaster.EventObjectPickUp += SetPositionOnPlayer;
		}
		
		void OnDisable() {
			itemMaster.EventObjectPickUp -= SetPositionOnPlayer;
		}
		
		void Start () {
			SetPositionOnPlayer();
		}

		private void SetPositionOnPlayer() {
			if(this.transform.root.CompareTag(GameManager_References._playerTag)) {
				this.transform.localPosition = itemLocalPosition;
				this.transform.rotation = itemRotation;
			}
		}
		
		private void InitializeReferences() {
			itemMaster = this.GetComponent<Item_Master>();	
		}
	}
}