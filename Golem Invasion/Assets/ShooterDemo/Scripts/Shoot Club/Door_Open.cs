using UnityEngine;
using UnityEngine.UI;
using System.Collections;

namespace ShootClub {
	public class Door_Open : MonoBehaviour {
		public GameObject canvasInformText;
		public GameObject canvasFinal;
		private Text textToDisplay;
		private string defaultText;
		private Player_Master playerMaster;

		void Start () {
			InitializeReferences();
		}

		void OnTriggerEnter(Collider col) {
			if(col.CompareTag(GameManager_References._playerTag) || col.CompareTag("Player")) {
				textToDisplay.text = defaultText;
				canvasInformText.SetActive(true);
			}
		}

		void OnTriggerStay(Collider col) {
			if(col.CompareTag(GameManager_References._playerTag) || col.CompareTag("Player")) {
				CheckPlayerInput();
			}
		}

		void OnTriggerExit(Collider col) {
			if(col.CompareTag(GameManager_References._playerTag) || col.CompareTag("Player")) {
				textToDisplay.text = defaultText;
				canvasInformText.SetActive(false);
			}
		}

		private void CheckPlayerInput() {
			if(Input.GetKeyDown(KeyCode.E)) {
				if(!playerMaster.hasMainKey)
					textToDisplay.text = "The door is locked...";
				else {
					GetComponent<Door_Spawn>().CallSpawners();
					canvasFinal.SetActive(true);
					Destroy(this.gameObject);
				}
			}
		}

		private void InitializeReferences() {
			playerMaster = GameManager_References._player.GetComponent<Player_Master>();
			textToDisplay = canvasInformText.transform.GetChild(0).GetChild(0).GetComponent<Text>();
			defaultText = textToDisplay.text;
		}
	}
}