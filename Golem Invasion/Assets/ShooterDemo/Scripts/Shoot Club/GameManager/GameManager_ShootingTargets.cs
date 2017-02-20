using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class GameManager_ShootingTargets : MonoBehaviour {
		private GameManager_Master gameManagerMaster;
		private float checkRate = 0.5f;
		private float nextCheck;
		private GameObject[] colliders;
		public GameObject[] shootingTargets;
		public GameObject doneLabel;

		void OnEnable() {
			InitializeReferences();
			gameManagerMaster.ShootingTargetsKilledEvent += CarryOutShootingTutorialDoneActions;
		}
		
		void OnDisable() {
			gameManagerMaster.ShootingTargetsKilledEvent -= CarryOutShootingTutorialDoneActions;
		}
		
		void Update () {
			if(Time.time > nextCheck) {
				nextCheck = Time.time + checkRate;
				if(CheckIfShootingTutorialDone())
					gameManagerMaster.CallEventShootingTargetsKilled();
			}
		}

		private bool CheckIfShootingTutorialDone() {
			if(shootingTargets.Length > 0) {
				foreach(GameObject st in shootingTargets) {
					if(st.gameObject.GetComponent<Enemy_Health>().enemyHealth > 0)
						return false;
				}
				return true;
			}
			return false;
		}

		private void CarryOutShootingTutorialDoneActions() {
			if(doneLabel != null) {
				doneLabel.SetActive(true);
			}
			colliders = GameObject.FindGameObjectsWithTag("ShootingTutorialCollider");
			foreach(GameObject col in colliders)
				Destroy(col);
		}
		
		private void InitializeReferences() {
			gameManagerMaster = GetComponent<GameManager_Master>();
		}
	}
}