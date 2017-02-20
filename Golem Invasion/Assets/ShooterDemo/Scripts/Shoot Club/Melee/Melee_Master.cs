using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Melee_Master : MonoBehaviour {
		public delegate void GeneralEventHandler();
		public delegate void MeleeHitEventHandler(Collision hitCol, Transform hitT);

		public event GeneralEventHandler EventPlayerInput;
		public event GeneralEventHandler EventMeleeReset;
		public event MeleeHitEventHandler EventHit;

		public bool isInUse = false;
		public float swingRate = 0.3f;

		public void CallEventPlayerInput() {
			if(EventPlayerInput != null) {
				EventPlayerInput();
			}
		}

		public void CallEventMeleeReset() {
			if(EventMeleeReset != null) {
				EventMeleeReset();
			}
		}

		public void CallEventHit(Collision hitCol, Transform hitT) {
			if(EventHit != null) {
				EventHit(hitCol, hitT);
			}
		}
	}
}