using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Destructible_Master : MonoBehaviour {
		public delegate void GeneralEventHandler();
		public delegate void HealthEventHandler(int health);
		
		public event GeneralEventHandler EventDestroyMe;
		public event GeneralEventHandler EventHealthLow;
		public event HealthEventHandler EventHealthReduction;

		public void CallEventHealthReduction(int health) {
			if(EventHealthReduction != null)
				EventHealthReduction(health);
		}

		public void CallEventDestroyMe() {
			if(EventDestroyMe != null)
				EventDestroyMe();
		}

		public void CallEventHealthLow() {
			if(EventHealthLow != null)
				EventHealthLow();
		}
	}
}