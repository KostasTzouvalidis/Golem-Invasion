using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Melee_Sound : MonoBehaviour {
		private Melee_Master meleeMaster;
		private Transform myTransform;
		private AudioSource audioSource;
		public AudioClip swingSound;
		public AudioClip strikeSound;
		public float meleeVolume = 0.5f;

		void OnEnable() {
			InitializeReferences();
			meleeMaster.EventHit += PlayStrikeSound;
		}
		
		void OnDisable() {
			meleeMaster.EventHit += PlayStrikeSound;
		}

		public void PlaySwingSound() {
			if(swingSound != null) {
				audioSource.clip = swingSound;
				audioSource.volume = meleeVolume;
				audioSource.Play ();
			}
		}

		private void PlayStrikeSound(Collision dummy1, Transform dummy2) {
			if(swingSound != null) {
				AudioSource.PlayClipAtPoint(strikeSound, myTransform.position, meleeVolume);
			}
		}
		
		private void InitializeReferences() {
			meleeMaster = GetComponent<Melee_Master>();
			audioSource = GetComponent<AudioSource> ();
			myTransform = transform;
		}
	}
}