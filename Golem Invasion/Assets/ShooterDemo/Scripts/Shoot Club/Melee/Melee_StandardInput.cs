using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Melee_StandardInput : MonoBehaviour {
		private Melee_Master meleeMaster;
		private Gun_Master gunMaster;
		private Transform myTransform;
		public string attackButtonName;

		void Start () {
			InitializeReferences();
		}
		
		void Update () {
			CheckIfShouldAttack();
		}

		private void CheckIfShouldAttack() {
			if(Time.timeScale > 0 && myTransform.root.CompareTag(GameManager_References._playerTag) &&
			   !meleeMaster.isInUse && !gunMaster.isReloading) {
				if(Input.GetButtonDown(attackButtonName)) {
					meleeMaster.isInUse = true;
					meleeMaster.CallEventPlayerInput();
				}
			}
		}
		
		private void InitializeReferences() {
			myTransform = transform;
			meleeMaster = GetComponent<Melee_Master>();
			if(GetComponent<Gun_Master>() != null) {
				gunMaster = GetComponent<Gun_Master>();
			}
		}
	}
}