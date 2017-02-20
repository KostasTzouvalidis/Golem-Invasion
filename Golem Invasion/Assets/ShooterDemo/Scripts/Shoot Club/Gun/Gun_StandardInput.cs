using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Gun_StandardInput : MonoBehaviour {
		private Gun_Master gunMaster;
		private Melee_Master meleeMaster;
		private Player_Master playerMaster;
		private Transform myTransform;
		private float nextAttack;
		public float attackRate = 0.5f;
		public bool isAutomatic;
		public bool hasBurstFire;
		public bool isBurstFireActive;
		public string attackButtonName;
		public string reloadButtonName;
		public string burstFireButtonName;

		void Start () {
			InitializeReferences();
		}
		
		void Update () {
			if(!playerMaster.isDead) {
				CheckIfWeaponShouldAttack();
				CheckForBurstFireToggle();
				CheckForReload();
			}
		}

		private void CheckIfWeaponShouldAttack() {
			if(Time.time > nextAttack && Time.timeScale > 0 && !meleeMaster.isInUse &&
			   myTransform.root.CompareTag(GameManager_References._playerTag)) {
				if(isAutomatic && !isBurstFireActive) {
					if(Input.GetButton(attackButtonName)) {
						Attack();
					}
				}
				else if(isAutomatic && isBurstFireActive) {
					if(Input.GetButtonDown(attackButtonName)) {
						StartCoroutine(RunBurstFire());
					}
				}
				else if(!isAutomatic) {
					if(Input.GetButton(attackButtonName)) {
						Attack();
					}
				}
			}
		}

		private void Attack() {
			nextAttack = Time.time + attackRate;
			if(gunMaster.isGunLoaded) {
				gunMaster.CallEventPlayerInput();
			}
			else {
				//Sound when the gun has no ammo
				gunMaster.CallEventGunNotUsable();
			}
		}

		private void CheckForReload() {
			if(Input.GetButtonDown(reloadButtonName) && Time.time > 0 &&
			   myTransform.root.CompareTag(GameManager_References._playerTag))
				gunMaster.CallEventGunReload();

		}

		private void CheckForBurstFireToggle() {
			if(Input.GetButtonDown(burstFireButtonName) && Time.time > 0 &&
			   myTransform.root.CompareTag(GameManager_References._playerTag)) {
				isBurstFireActive = !isBurstFireActive;
				gunMaster.CallEventToggleBurstFire();
				Debug.Log("Burst Fire toggled to " + isBurstFireActive);
			}
		}

		private IEnumerator RunBurstFire() {
			Attack();
			yield return new WaitForSeconds(attackRate);
			Attack();
			yield return new WaitForSeconds(attackRate);
			Attack();
		}
		
		private void InitializeReferences() {
			gunMaster = GetComponent<Gun_Master>();
			playerMaster = GameManager_References._player.gameObject.GetComponent<Player_Master>();
			meleeMaster = GetComponent<Melee_Master>();
			gunMaster.isGunLoaded = true; //So the player can shoot
			myTransform = transform;
		}
	}
}