using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Gun_Master : MonoBehaviour {
		public delegate void GeneralEventHandler();
		public delegate void GunCrosshairEventHandler(float speed);
		public delegate void GunAmmoEventHandler(int currentAmmo, int carriedAmmo);
		public delegate void GunHitEventHandler(Vector3 hitPosition, Transform hitTransform);

		public event GeneralEventHandler EventPlayerInput;
		public event GeneralEventHandler EventGunNotUsable;
		public event GeneralEventHandler EventGunReload;
		public event GeneralEventHandler EventGunReset;
		public event GeneralEventHandler EventToggleBurstFire;
		public event GunHitEventHandler EventShotDefault;
		public event GunHitEventHandler EventShotEnemy;
		public event GunAmmoEventHandler EventAmmoChanged;
		public event GunCrosshairEventHandler EventSpeedCaptured;

		public bool isGunLoaded;
		public bool isReloading;

		public void CallEventPlayerInput() {
			if(EventPlayerInput != null)
				EventPlayerInput();
		}

		public void CallEventGunNotUsable() {
			if(EventGunNotUsable != null)
				EventGunNotUsable();
		}

		public void CallEventGunReload() {
			if(EventGunReload != null)
				EventGunReload();
		}

		public void CallEventGunReset() {
			if(EventGunReset != null)
				EventGunReset();
		}

		public void CallEventToggleBurstFire() {
			if(EventToggleBurstFire != null)
				EventToggleBurstFire();
		}

		public void CallEventShotDefault(Vector3 hitPosition, Transform hitTransform) {
			if(EventShotDefault != null)
				EventShotDefault(hitPosition, hitTransform);
		}

		public void CallEventShotEnemy(Vector3 hitPosition, Transform hitTransform) {
			if(EventShotEnemy != null)
				EventShotEnemy(hitPosition, hitTransform);
		}

		public void CallEventAmmoChanged(int currentAmmo, int carriedAmmo) {
			if(EventAmmoChanged != null)
				EventAmmoChanged(currentAmmo, carriedAmmo);
		}

		public void CallEventSpeedCaptured(float speed) {
			if(EventSpeedCaptured != null)
				EventSpeedCaptured(speed);
		}
	}
}