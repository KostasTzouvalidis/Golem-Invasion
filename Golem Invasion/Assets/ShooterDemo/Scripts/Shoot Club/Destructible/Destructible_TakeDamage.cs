using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Destructible_TakeDamage : MonoBehaviour {
		private Destructible_Master desMaster;
		
		void Start () {
			InitializeReferences();
		}

		public void ProcessDamage(int damage) {
			desMaster.CallEventHealthReduction(damage);
		}

		private void InitializeReferences() {
			desMaster = GetComponent<Destructible_Master>();			
		}
	}
}