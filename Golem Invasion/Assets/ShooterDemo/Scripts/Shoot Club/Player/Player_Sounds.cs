using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Player_Sounds : MonoBehaviour {
		private Player_Master playerMaster;
		public float defaultVolume;
		public AudioClip ammoSound;

		void OnEnable() {
			InitializeReferences();
			playerMaster.EventAmmoPickedUp += PlayAmmoPickUpSound;
		}
		
		void OnDisable() {
			playerMaster.EventAmmoPickedUp -= PlayAmmoPickUpSound;			
		}

		private void PlayAmmoPickUpSound(string dummy1, int dummy2) {
			if(ammoSound != null)
				AudioSource.PlayClipAtPoint(ammoSound, this.transform.position, defaultVolume);
		}
		
		private void InitializeReferences() {
			playerMaster = GetComponent<Player_Master>();			
		}
	}
}