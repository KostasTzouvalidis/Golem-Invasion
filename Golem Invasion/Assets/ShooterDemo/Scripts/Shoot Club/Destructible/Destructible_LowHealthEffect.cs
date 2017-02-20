using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Destructible_LowHealthEffect : MonoBehaviour {
		private Destructible_Master desMaster;
		public GameObject[] lowHealthEffect;
		
		void OnEnable() {
			InitializeReferences();
			desMaster.EventHealthLow += TurnOnLowHealthEffect;
		}
		
		void OnDisable() {
			desMaster.EventHealthLow -= TurnOnLowHealthEffect;
		}

		private void TurnOnLowHealthEffect() {
			if(lowHealthEffect.Length > 0) {
				for(int i=0; i<lowHealthEffect.Length; i++) {
					lowHealthEffect[i].SetActive(true);
				}
			}
		}
		
		private void InitializeReferences() {
			desMaster = GetComponent<Destructible_Master>();
		}
	}
}