using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Destructible_Health : MonoBehaviour {
		private Destructible_Master desMaster;
		private int startingHealth;
		private bool isExploding = false;
		public int health;

		void OnEnable() {
			InitializeReferences();
			desMaster.EventHealthReduction += ReduceHealth;
		}
		
		void OnDisable() {
			desMaster.EventHealthReduction -= ReduceHealth;
		}

		private void ReduceHealth(int damage) {
			health -= damage;
			CheckIfHealthLow();
			if(health <= 0 && !isExploding) {
				isExploding = true;
				desMaster.CallEventDestroyMe();
			}
		}

		private void CheckIfHealthLow() {
			if(health <= startingHealth / 2)
				desMaster.CallEventHealthLow();
		}

		private void InitializeReferences() {
			desMaster = GetComponent<Destructible_Master>();
			startingHealth = health;
		}
	}
}