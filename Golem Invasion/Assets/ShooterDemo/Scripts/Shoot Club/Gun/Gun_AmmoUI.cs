using UnityEngine;
using System.Collections;
using UnityEngine.UI;

namespace ShootClub {
	public class Gun_AmmoUI : MonoBehaviour {
		private Gun_Master gunMaster;
		public InputField currentAmmoField;
		public InputField carriedAmmoField;

		void OnEnable() {
			InitializeReferences();
			gunMaster.EventAmmoChanged += UpdateAmmoUI;
		}
		
		void OnDisable() {
			gunMaster.EventAmmoChanged -= UpdateAmmoUI;
		}

		private void UpdateAmmoUI(int currentAmmo, int carriedAmmo) {
			if(currentAmmoField != null)
				currentAmmoField.text = currentAmmo.ToString();
			if(carriedAmmoField != null)
				carriedAmmoField.text = carriedAmmo.ToString();
		}

		private void InitializeReferences() {
			gunMaster = GetComponent<Gun_Master>();
		}
	}
}