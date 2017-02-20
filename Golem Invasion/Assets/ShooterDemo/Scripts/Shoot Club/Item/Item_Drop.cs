using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Item_Drop : MonoBehaviour {
		private Item_Master itemMaster;
		private Transform myTransform;
		public string dropButtonName;

		void Start () {
			InitializeReferences();
		}
		
		void Update () {
			CheckForDropInput();
		}

		private void CheckForDropInput() {
			if(Input.GetButtonDown(dropButtonName) && Time.timeScale > 0 &&
			   myTransform.root.CompareTag(GameManager_References._playerTag)) {
				transform.parent = null;
				itemMaster.CallEventObjectThrow();
			}
		}
		
		private void InitializeReferences() {
			myTransform = transform;
			itemMaster = GetComponent<Item_Master>();
		}
	}
}