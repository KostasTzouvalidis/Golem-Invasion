using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Enemy_RagdollActivation : MonoBehaviour {
		private Enemy_Master enemyMaster;
		private Collider myCollider;
		private Rigidbody myRigidbody;
		
		void OnEnable() {
			InitializeReferences();
			enemyMaster.EventEnemyDie += ActivateRagdoll;
		}
		
		void OnDisable() {
			enemyMaster.EventEnemyDie -= ActivateRagdoll;
		}

		private void ActivateRagdoll() {
			if(myRigidbody != null) {
				myRigidbody.isKinematic = false;
				myRigidbody.useGravity = true;
			}

			if(myCollider != null) {
				myCollider.isTrigger = false;
				myCollider.enabled = true;
			}
		}

		private void InitializeReferences() {
			enemyMaster = this.transform.root.GetComponent<Enemy_Master>();
			if(GetComponent<Collider>() != null)
				myCollider = GetComponent<Collider>();
			if(GetComponent<Rigidbody>() != null)
				myRigidbody = GetComponent<Rigidbody>();
		}
	}
}