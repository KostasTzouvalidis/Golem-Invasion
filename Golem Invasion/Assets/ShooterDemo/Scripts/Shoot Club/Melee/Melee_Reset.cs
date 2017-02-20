using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Melee_Reset : MonoBehaviour {
		private Melee_Master meleeMaster;
		private Item_Master itemMaster;

		void OnEnable() {
			InitializeReferences();
			if(itemMaster != null)
				itemMaster.EventObjectThrow += ResetMelee;
		}
		
		void OnDisable() {
			if(itemMaster != null)
				itemMaster.EventObjectThrow -= ResetMelee;
		}

		private void ResetMelee() {
			meleeMaster.isInUse = false;
		}
		
		private void InitializeReferences() {
			meleeMaster = GetComponent<Melee_Master>();
			if(GetComponent<Item_Master>() != null)
				itemMaster = GetComponent<Item_Master>();
		}
	}
}