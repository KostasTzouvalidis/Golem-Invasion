using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Destructible_Sound : MonoBehaviour {
		private Destructible_Master desMaster;
		public float explosionVolume = 0.5f;
		public AudioClip explosionSound;

		void OnEnable() {
			InitializeReferences();
			desMaster.EventDestroyMe += ExplosionSound;
		}
		
		void OnDisable() {
			desMaster.EventDestroyMe -= ExplosionSound;
		}

		private void ExplosionSound() {
			if(explosionSound != null) {
				AudioSource.PlayClipAtPoint(explosionSound, transform.position, explosionVolume);
			}
		}
		
		private void InitializeReferences() {
			desMaster = GetComponent<Destructible_Master>();			
		}
	}
}