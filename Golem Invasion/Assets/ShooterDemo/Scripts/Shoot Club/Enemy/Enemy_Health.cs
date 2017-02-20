using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Enemy_Health : MonoBehaviour {
		private Enemy_Master enemyMaster;
		public int enemyHealth = 100;

		void OnEnable() {
			InitializeReferences();
			enemyMaster.EventEnemyHealthReduction += ReduceHealth;
		}
		
		void OnDisable() {
			enemyMaster.EventEnemyHealthReduction -= ReduceHealth;
		}

		private void ReduceHealth(int health) {
			enemyHealth -= health;
			if(enemyHealth < 0) {
				enemyHealth = 0;
				enemyMaster.CallEventEnemyDie();
				if(!this.gameObject.transform.root.CompareTag("STarget"))
					Destroy(gameObject, Random.Range(7, 10));
			}
		}

		private void InitializeReferences() {
			enemyMaster = GetComponent<Enemy_Master>();
		}
	}
}