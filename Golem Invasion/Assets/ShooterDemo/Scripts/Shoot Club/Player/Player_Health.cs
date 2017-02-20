using UnityEngine;
using System.Collections;
using UnityEngine.UI;

namespace ShootClub {
	public class Player_Health : MonoBehaviour {
		private GameManager_Master gameManagerMaster;
		private Player_Master playerMaster;
		private const int MAX_HEALTH = 100;
		private int playerHealth;
		public Text healthText;


		void OnEnable() {
			InitializeReferences();
			SetUI();
			playerMaster.EventPlayerHealthIncrease += IncreaseHealth;
			playerMaster.EventPlayerHealthReduce += ReduceHealth;
		}
		
		void OnDisable() {
			playerMaster.EventPlayerHealthIncrease -= IncreaseHealth;
			playerMaster.EventPlayerHealthReduce -= ReduceHealth;			
		}
		
		void Start () {

		}

		void Update() {
			if(Input.GetKeyUp(KeyCode.Q))
				playerMaster.CallEventPlayerHealthReduction(10);
		}

		private IEnumerator TestHealthReduction() {
			yield return new WaitForSeconds(3);
			playerMaster.CallEventPlayerHealthReduction(70);
		}

		private void ReduceHealth(int healthChange) {
			playerHealth -= healthChange;
			if(playerHealth <= 0) {
				playerHealth = 0;
				playerMaster.isDead = true;
				gameManagerMaster.CallEventGameOver();
			}
		}

		private void IncreaseHealth(int healthChange) {
			playerHealth += healthChange;
			if(playerHealth > MAX_HEALTH)
				playerHealth = MAX_HEALTH;
		}

		private void SetUI() {
			if(healthText != null)
				healthText.text = playerHealth.ToString();
		}

		void OnGUI() {
			Color c;
			if(healthText != null) {
				if(playerHealth > MAX_HEALTH * 0.6) {
					c = new Color(48, 201, 0, 255);
					healthText.color = c;
				}
				else if(playerHealth <= MAX_HEALTH * 0.6 && playerHealth > MAX_HEALTH * 0.3) {
					c = new Color(225, 232, 0, 255);
					healthText.color = c;
				}
				else {
					c = new Color(199, 0, 0, 255);
					healthText.color = c;
				}

				healthText.text = playerHealth.ToString();
			}
		}

		private void InitializeReferences() {
			gameManagerMaster = GameObject.Find("_GameManager").GetComponent<GameManager_Master>();
			playerMaster = GetComponent<Player_Master>();
			playerHealth = MAX_HEALTH;
		}
	}
}