using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Gun_Sounds : MonoBehaviour {
		private Gun_Master gunMaster;
		private Transform myTransform;
		public float shootVolume = 0.5f;
		public float reloadVolume = 0.7f;
		private AudioSource audioSource;
		public AudioClip[] shootSound;
		public AudioClip reloadSound;

		void OnEnable() {
			InitializeReferences();
			gunMaster.EventPlayerInput += PlayShootSound;
		}
		
		void OnDisable() {
			gunMaster.EventPlayerInput -= PlayShootSound;
		}

		private void PlayShootSound() {
			if(shootSound.Length > 0) {
				int index = Random.Range(0, shootSound.Length);
				AudioSource.PlayClipAtPoint(shootSound[index], myTransform.position, shootVolume);
			}
		}

		public void PlayReloadSound() {
			if(reloadSound != null)
				audioSource.clip = reloadSound;
				audioSource.volume = reloadVolume;
				audioSource.Play ();
		}

		private void InitializeReferences() {
			gunMaster = GetComponent<Gun_Master>();
			audioSource = GetComponent<AudioSource> ();
			myTransform = transform;			
		}
	}
}