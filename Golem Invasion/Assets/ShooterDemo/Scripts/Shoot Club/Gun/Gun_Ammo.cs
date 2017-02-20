using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Gun_Ammo : MonoBehaviour {
		private Gun_Master gunMaster;
		private Player_Master playerMaster;
		private Player_AmmoBox ammoBox;
		private Animator myAnimator;

		public int clipSize;
		public int currentAmmo;
		public string ammoName;
		public float reloadTime;

		void OnEnable() {
			InitializeReferences();
			StartingSanityCheck();
			CheckAmmoStatus();
			gunMaster.EventPlayerInput += ReduceAmmo;
			gunMaster.EventPlayerInput += CheckAmmoStatus;
			gunMaster.EventGunReload += TryToReload;
			gunMaster.EventGunNotUsable += TryToReload;
			gunMaster.EventGunReset += ResetGunReloaded;

			if(playerMaster != null)
				playerMaster.EventAmmoChanged += UIAmmoUpdateRequest;
			if(ammoBox != null)
				StartCoroutine(UpdateAmmoUIWhenEnabling());
		}
		
		void OnDisable() {
			gunMaster.EventPlayerInput -= ReduceAmmo;
			gunMaster.EventPlayerInput -= CheckAmmoStatus;
			gunMaster.EventGunReload -= TryToReload;
			gunMaster.EventGunNotUsable -= TryToReload;
			gunMaster.EventGunReset -= ResetGunReloaded;

			if(playerMaster != null)
				playerMaster.EventAmmoChanged -= UIAmmoUpdateRequest;
		}
		
		void Start () {
			InitializeReferences();
			StartCoroutine(UpdateAmmoUIWhenEnabling());
			if(playerMaster != null)
				playerMaster.EventAmmoChanged += UIAmmoUpdateRequest;
		}
		
		private void ReduceAmmo() {
			currentAmmo--;
			UIAmmoUpdateRequest();
		}

		private void TryToReload() {
			for(int i=0; i<ammoBox.ammunitionTypes.Count; i++) {
				if(ammoBox.ammunitionTypes[i].getAmmoName() == ammoName) {
					if(ammoBox.ammunitionTypes[i].getAmmoCarrying() > 0 && currentAmmo != clipSize &&
					   !gunMaster.isReloading) {
						gunMaster.isReloading = true;
						gunMaster.isGunLoaded = false;

						if(myAnimator != null)
							myAnimator.SetTrigger("Reload");
						else
							StartCoroutine(ReloadWithoutAnimation());
					}
					break;
				}
			}
		}

		private void CheckAmmoStatus() {
			if(currentAmmo <= 0) {
				currentAmmo = 0;
				gunMaster.isGunLoaded = false;
			}
			else if(currentAmmo > 0)
				gunMaster.isGunLoaded = true;
		}

		private void StartingSanityCheck() {
			if(currentAmmo > clipSize)
				currentAmmo = clipSize;
		}

		private void UIAmmoUpdateRequest() {
			for(int i=0; i<ammoBox.ammunitionTypes.Count; i++) {
				if(ammoBox.ammunitionTypes[i].getAmmoName() == ammoName) {
					gunMaster.CallEventAmmoChanged(currentAmmo, ammoBox.ammunitionTypes[i].getAmmoCarrying());
					break;
				}
			}
		}

		private void ResetGunReloaded() {
			gunMaster.isReloading = false;
			CheckAmmoStatus();
			UIAmmoUpdateRequest();
		}

		private IEnumerator ReloadWithoutAnimation() {
			yield return new WaitForSeconds(reloadTime);
			OnReloadComplete();
		}

		private IEnumerator UpdateAmmoUIWhenEnabling() {
			yield return new WaitForSeconds(0.05f); //Fudge factor to ensure that the UI is updating when changing weapons
			UIAmmoUpdateRequest();
		}

		public void OnReloadComplete() { //Called by the Reload Animation.
			//Attempt add ammo to current
			for(int i=0; i<ammoBox.ammunitionTypes.Count; i++) {
				if(ammoBox.ammunitionTypes[i].getAmmoName() == ammoName) {
					int ammoTopUp = clipSize - currentAmmo;
					if(ammoBox.ammunitionTypes[i].getAmmoCarrying() >= ammoTopUp) {
						currentAmmo += ammoTopUp;
						int ammo = ammoBox.ammunitionTypes[i].getAmmoCarrying();
						ammoBox.ammunitionTypes[i].setAmmoCarrying(ammo - ammoTopUp);
					}
					else if(ammoBox.ammunitionTypes[i].getAmmoCarrying() < ammoTopUp &&
					   ammoBox.ammunitionTypes[i].getAmmoCarrying() != 0) {
						currentAmmo += ammoBox.ammunitionTypes[i].getAmmoCarrying();
						ammoBox.ammunitionTypes[i].setAmmoCarrying(0);
					}
					break;
				}
			}
			ResetGunReloaded();
		}

		private void InitializeReferences() {
			gunMaster = GetComponent<Gun_Master>();
			if(GetComponent<Animator>() != null)
				myAnimator = GetComponent<Animator>();
			if(GameManager_References._player != null) {
				playerMaster = GameManager_References._player.GetComponent<Player_Master>();
				ammoBox = GameManager_References._player.GetComponent<Player_AmmoBox>();
			}

		}
	}
}