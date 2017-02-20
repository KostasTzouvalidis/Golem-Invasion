using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Melee_Swing : MonoBehaviour {
		private Melee_Master meleeMaster;
		public Collider myCollider;
		public Rigidbody myRigidbody;
		public Animator myAnimator;

		void OnEnable() {
			InitializeReferences();
			meleeMaster.EventPlayerInput += MeleeAttackActions;
		}
		
		void OnDisable() {
			meleeMaster.EventPlayerInput -= MeleeAttackActions;
		}
		
		public void MeleeAttackComplete() {
			myCollider.enabled = false;
			myRigidbody.isKinematic = true;
			meleeMaster.isInUse = false;
		}

		private void MeleeAttackActions() {
			myCollider.enabled = true;
			myRigidbody.isKinematic = false;
			myAnimator.SetTrigger("Melee");
		}
		
		private void InitializeReferences() {
			meleeMaster = GetComponent<Melee_Master>();
		}
	}
}