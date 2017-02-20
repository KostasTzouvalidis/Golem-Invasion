using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class GameManager_ExplodingTargets : MonoBehaviour {
		private GameManager_Master gameManagerMaster;
		private float checkRate = 0.5f;
		private float nextCheck;
		public GameObject[] explodingTargets;
		public GameObject doneLabel;

		void OnEnable() {
			InitializeReferences();
			gameManagerMaster.ExplodingTargetsKilledEvent += CarryOutExplodingTutorialDoneActions;
		}
		
		void OnDisable() {
			gameManagerMaster.ExplodingTargetsKilledEvent -= CarryOutExplodingTutorialDoneActions;
		}

		void Start () {
			
		}
		
		void Update () {
			if(Time.time > nextCheck) {
				nextCheck = Time.time + checkRate;
				if(CheckIfExplodingTutorialDone())
					gameManagerMaster.CallEventExplodingTargetsKilled();
			}
		}

		private bool CheckIfExplodingTutorialDone() {
			if(explodingTargets.Length > 0) {
				foreach(GameObject st in explodingTargets) {
					if(st.gameObject.GetComponent<Enemy_Health>().enemyHealth > 0)
						return false;
				}
				return true;
			}
			return false;
		}
		
		private void CarryOutExplodingTutorialDoneActions() {
			if(doneLabel != null) {
				doneLabel.SetActive(true);
			}
			Destroy(GameObject.Find("DoneTutorialCollider"), 7);
			Destroy(GameObject.Find("ExplodeTargetCollider"));
		}

		private void InitializeReferences() {
			gameManagerMaster = GetComponent<GameManager_Master>();			
		}
	}
}