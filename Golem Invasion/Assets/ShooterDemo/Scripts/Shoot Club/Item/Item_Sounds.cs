using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Item_Sounds : MonoBehaviour {
		private Item_Master itemMaster;
		public float defaultVolume;
		public AudioClip throwSound;

		void OnEnable() {
			InitializeReferences();
			itemMaster.EventObjectThrow += PlayThrowSound;
		}
		
		void OnDisable() {
			itemMaster.EventObjectThrow -= PlayThrowSound;
		}

		private void PlayThrowSound() {
			if(throwSound != null) {
				AudioSource.PlayClipAtPoint(throwSound, this.transform.position, defaultVolume);
			}
		}

		private void InitializeReferences() {
			itemMaster = this.GetComponent<Item_Master>();
		}
	}
}