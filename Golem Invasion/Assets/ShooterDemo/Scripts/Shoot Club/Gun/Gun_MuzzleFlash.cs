using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Gun_MuzzleFlash : MonoBehaviour {
		private Gun_Master gunMaster;
		public ParticleSystem gunFlash;
		
		void OnEnable() {
			InitializeReferences();
			gunMaster.EventPlayerInput += PlayMuzzleFlash;
		}
		
		void OnDisable() {
			gunMaster.EventPlayerInput -= PlayMuzzleFlash;
		}

		private void PlayMuzzleFlash() {
			if(gunFlash != null)
				gunFlash.Play();
		}
		
		private void InitializeReferences() {
			gunMaster = GetComponent<Gun_Master>();
		}
	}
}