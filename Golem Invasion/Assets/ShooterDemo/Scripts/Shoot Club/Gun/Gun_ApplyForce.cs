using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Gun_ApplyForce : MonoBehaviour {
		private Gun_Master gunMaster;
		private Transform myTransform;
		public float forceToApply = 100;
		
		void OnEnable() {
			InitializeReferences();
			gunMaster.EventShotDefault += ApplyForce;
		}
		
		void OnDisable() {
			gunMaster.EventShotDefault -= ApplyForce;
		}

		private void ApplyForce(Vector3 hitPosition, Transform hitTransform) {
			if(hitTransform.GetComponent<Rigidbody>() != null)
				hitTransform.GetComponent<Rigidbody>().AddForce(myTransform.forward * forceToApply, ForceMode.Impulse);
		}

		private void InitializeReferences() {
			gunMaster = GetComponent<Gun_Master>();
			myTransform = transform;
		}
	}
}