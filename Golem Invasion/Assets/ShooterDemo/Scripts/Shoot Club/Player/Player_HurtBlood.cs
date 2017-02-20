using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Player_HurtBlood : MonoBehaviour {
		public GameObject hurtBloodCanvas;
		private Player_Master playerMaster;
		private GameManager_Master gameManagerMaster;
		private float visibilityDuration;

		void OnEnable() {
			InitializeReferences();
			playerMaster.EventPlayerHealthReduce += TurnOnHurtBloodEffect;
		}
		
		void OnDisable() {
			playerMaster.EventPlayerHealthReduce -= TurnOnHurtBloodEffect;
		}

		private void TurnOnHurtBloodEffect(int dummy) {
			if(hurtBloodCanvas != null && !gameManagerMaster.isGameOver) {
				StopAllCoroutines();
				hurtBloodCanvas.SetActive(false);
				hurtBloodCanvas.SetActive(true);
				StartCoroutine(ResetHurtBloodEffect());
			}
		}

		private IEnumerator ResetHurtBloodEffect() {
			yield return new WaitForSeconds(visibilityDuration);
			hurtBloodCanvas.SetActive(false);
		}
		
		private void InitializeReferences() {
			playerMaster = GetComponent<Player_Master>();
			gameManagerMaster = GameObject.Find("_GameManager").GetComponent<GameManager_Master>();
			visibilityDuration = 3f;
		}
	}
}