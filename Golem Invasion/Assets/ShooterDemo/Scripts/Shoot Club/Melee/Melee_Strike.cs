using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Melee_Strike : MonoBehaviour {
		private Melee_Master meleeMaster;
		private float nextSwingTime;
		public int damage = 13;

		void Start () {
			InitializeReferences();
		}

		private void OnCollisionEnter(Collision col) {
			if(col.gameObject != GameManager_References._player &&
			   meleeMaster.isInUse && Time.time > nextSwingTime) {
				nextSwingTime = Time.time + meleeMaster.swingRate;
				col.transform.SendMessage("ProcessDamage", damage, SendMessageOptions.DontRequireReceiver);
				meleeMaster.CallEventHit(col, col.transform);
			}
		}
		
		private void InitializeReferences() {
			meleeMaster = GetComponent<Melee_Master>();
		}
	}
}