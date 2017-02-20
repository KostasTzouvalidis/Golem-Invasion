using UnityEngine;
using System.Collections;
using UnityStandardAssets.Characters.FirstPerson;

namespace ShootClub {
	public class GameManager_Welcome : MonoBehaviour {
		private FirstPersonController player;
		public GameObject welcomeCanvas;
		public float durationOfCanvas;
		
		void Start () {
			InitializeReferences();
			if(welcomeCanvas != null) {
				StartCoroutine(ResetWelcomeCanvas());
			}
			StartCoroutine(DisablePlayerMovement());
		}

		private IEnumerator DisablePlayerMovement() {
			player.enabled = false;
			yield return new WaitForSeconds(durationOfCanvas);
			player.enabled = true;
		}

		private IEnumerator ResetWelcomeCanvas() {
			welcomeCanvas.SetActive(true);
			yield return new WaitForSeconds(durationOfCanvas);
			welcomeCanvas.SetActive(false);
		}

		private void InitializeReferences() {
			player = GameManager_References._player.GetComponent<FirstPersonController>();			
		}
	}
}