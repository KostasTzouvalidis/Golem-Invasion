using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Gun_Reset : MonoBehaviour {
		private Gun_Master gunMaster;
		private Item_Master itemMaster;

		void OnEnable() {
			InitializeReferences();
			if(itemMaster != null)
				itemMaster.EventObjectThrow += ResetGun;
		}
		
		void OnDisable() {
			if(itemMaster != null)
				itemMaster.EventObjectThrow -= ResetGun;
		}

		private void ResetGun() {
			gunMaster.CallEventGunReset();
		}
		
		private void InitializeReferences() {
			gunMaster = GetComponent<Gun_Master>();
			if(GetComponent<Item_Master>() != null)
				itemMaster = GetComponent<Item_Master>();
		}
	}
}