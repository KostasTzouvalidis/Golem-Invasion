using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Item_Throw : MonoBehaviour {
		public bool canBeThrown;
		public string throwButtonName;
		public float throwForce = 40;

		private Item_Master itemMaster;
		private Transform myTransform;
		private Rigidbody myRigidbody;
		private Vector3 throwDirection;

		void Start () {
			InitializeReferences();
		}
		
		void Update () {
			CheckForThrow();
		}

		private void CheckForThrow() {
			if(throwButtonName != null)
				if(Input.GetButtonUp(throwButtonName) && Time.timeScale > 0 && canBeThrown &&
				  myTransform.root.CompareTag(GameManager_References._playerTag)) {
					CarryOutThrowActions();
				}
		}

		private void CarryOutThrowActions() {
			throwDirection = myTransform.parent.forward;
			throwDirection.y = 0.5f;
			myTransform.parent = null;
			itemMaster.CallEventObjectThrow();
			HurlItem();
		}

		private void HurlItem() {
			myRigidbody.AddForce(throwDirection * throwForce, ForceMode.Impulse);
		}

		private void InitializeReferences() {
			itemMaster = this.GetComponent<Item_Master>();
			myTransform = this.GetComponent<Transform>();
			myRigidbody = this.GetComponent<Rigidbody>();
		}
	}
}