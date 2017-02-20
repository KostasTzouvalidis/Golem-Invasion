using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Destructible_Degenerate : MonoBehaviour {
		private Destructible_Master desMaster;
		private bool isHealthLow = false;
		private float nextDegenTime;
		public float degenRate = 0.7f;
		public int healthLoss = 3;

		void OnEnable() {
			InitializeReferences();
			desMaster.EventHealthLow += HealthLow;
		}
		
		void OnDisable() {
			desMaster.EventHealthLow -= HealthLow;
		}
		
		void Update () {
			CheckIfHealthShouldDegenerate();
		}

		private void HealthLow() {
			isHealthLow = true;
		}

		private void CheckIfHealthShouldDegenerate() {
			if(isHealthLow) {
				if(Time.time > nextDegenTime) {
					nextDegenTime = Time.time + degenRate;
					desMaster.CallEventHealthReduction(healthLoss);
				}
			}
		}

		private void InitializeReferences() {
			desMaster = GetComponent<Destructible_Master>();			
		}
	}
}