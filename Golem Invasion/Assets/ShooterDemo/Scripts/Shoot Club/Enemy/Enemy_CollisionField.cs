using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Enemy_CollisionField : MonoBehaviour {
		private Enemy_Master enemyMaster;
		private Rigidbody rbHitingMe;
		private int damageToApply;
		public float massRequirement = 50;
		public float speedRequirement = 7;
		public float damageFactor = 0.1f;

		void OnEnable() {
			InitializeReferences();
			enemyMaster.EventEnemyDie += DisableThis;
		}
		
		void OnDisable() {
			enemyMaster.EventEnemyDie -= DisableThis;
		}
		
		void OnTriggerEnter(Collider col) {
			if(col.GetComponent<Rigidbody>() != null) {
				rbHitingMe = col.GetComponent<Rigidbody>();
				if(rbHitingMe.mass >= massRequirement &&
				   rbHitingMe.velocity.sqrMagnitude >= speedRequirement * speedRequirement) {
					damageToApply = (int) (damageFactor * rbHitingMe.mass * rbHitingMe.velocity.magnitude);
					enemyMaster.CallEventEnemyHealthReduction(damageToApply);
				}
			}
		}

		private void DisableThis() {
			gameObject.SetActive(false);
		}
		
		private void InitializeReferences() {
			enemyMaster = this.transform.root.GetComponent<Enemy_Master>();			
		}
	}
}