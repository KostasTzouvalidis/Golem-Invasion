using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Enemy_TakeDamage : MonoBehaviour {
		private Enemy_Master enemyMaster;
		public int damageMultiplier = 1;
		public bool shouldRemoveCollider;
		
		void OnEnable() {
			InitializeReferences();
			enemyMaster.EventEnemyDie += RemoveThis;
		}
		
		void OnDisable() {
			enemyMaster.EventEnemyDie -= RemoveThis;
		}

		public void ProcessDamage(int damage) {
			int damageToApply = damage * damageMultiplier;
			enemyMaster.CallEventEnemyHealthReduction(damageToApply);
		}

		private void RemoveThis() {
			if(shouldRemoveCollider) {
				if(GetComponent<Collider>() != null)
					Destroy(GetComponent<Collider>());

				if(GetComponent<Rigidbody>() != null)
					Destroy(GetComponent<Rigidbody>());
			}

			if(!this.gameObject.transform.root.CompareTag("STarget"))
				Destroy(this);
		}

		private void InitializeReferences() {
			enemyMaster = this.transform.root.GetComponent<Enemy_Master>();			
		}
	}
}