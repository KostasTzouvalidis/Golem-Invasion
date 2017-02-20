using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Destructible_CollisionDetection : MonoBehaviour {
		private Destructible_Master desMaster;
		private Collider[] hitCol;
		private Rigidbody myRigidbody;
		public float thresholdMass = 60;
		public float thresholdSpeed = 5;

		void Start () {
			InitializeReferences();
		}

		void OnCollisionEnter(Collision col) {
			if(col.contacts.Length > 0) {
				if(col.contacts[0].otherCollider.GetComponent<Rigidbody>() != null) {
					CollisionCheck(col.contacts[0].otherCollider.GetComponent<Rigidbody>());
				}
				else
					SelfSpeedCheck();
			}
		}

		private void CollisionCheck(Rigidbody rb) {
			if(rb.mass > thresholdMass && rb.velocity.sqrMagnitude > thresholdSpeed * thresholdSpeed) {
				int damage = (int)rb.mass;
				desMaster.CallEventHealthReduction(damage);
			}
			else
				SelfSpeedCheck();
		}

		private void SelfSpeedCheck() {
			if(myRigidbody.velocity.sqrMagnitude > thresholdSpeed * thresholdSpeed) {
				int damage = (int)myRigidbody.mass;
				desMaster.CallEventHealthReduction(damage);
			}
		}
		
		private void InitializeReferences() {
			desMaster = GetComponent<Destructible_Master>();
			if(GetComponent<Rigidbody>() != null)
				myRigidbody = GetComponent<Rigidbody>();
		}
	}
}