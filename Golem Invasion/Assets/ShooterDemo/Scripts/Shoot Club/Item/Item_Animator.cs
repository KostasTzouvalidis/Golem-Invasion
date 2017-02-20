using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Item_Animator : MonoBehaviour {
		private Item_Master itemMaster;
		public Animator myAnimator;

		void OnEnable() {
			InitializeReferences();
			itemMaster.EventObjectThrow += DisableAnimator;
			itemMaster.EventObjectPickUp += EnableAnimator;
		}
		
		void OnDisable() {
			itemMaster.EventObjectThrow -= DisableAnimator;
			itemMaster.EventObjectPickUp -= EnableAnimator;		
		}

		private void EnableAnimator() {
			if(myAnimator != null)
				myAnimator.enabled = true;
		}

		private void DisableAnimator() {
			if(myAnimator != null)
				myAnimator.enabled = false;
		}

		private void InitializeReferences() {
			itemMaster = this.GetComponent<Item_Master>();			
		}
	}
}