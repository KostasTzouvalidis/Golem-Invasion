using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Gun_Animator : MonoBehaviour {
		private Gun_Master gunMaster;
		private Animator myAnimator;

		void OnEnable() {
			InitializeReferences();
			gunMaster.EventPlayerInput += PlayShootAnimation;
		}
		
		void OnDisable() {
			gunMaster.EventPlayerInput -= PlayShootAnimation;
		}

		private void PlayShootAnimation() {
			if(myAnimator != null)
				myAnimator.SetTrigger("Shoot");
		}
		
		private void InitializeReferences() {
			gunMaster = GetComponent<Gun_Master>();
			if(GetComponent<Animator>() != null)
				myAnimator = GetComponent<Animator>();
		}
	}
}