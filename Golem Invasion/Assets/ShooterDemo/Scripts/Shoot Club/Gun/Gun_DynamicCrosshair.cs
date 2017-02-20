using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Gun_DynamicCrosshair : MonoBehaviour {
		private Gun_Master gunMaster;
		private Transform playerTransform;
		private Transform weaponCamera;
		public float playerSpeed;
		private float nextCaptureTime;
		private float captureInterval = 0.5f;
		private Vector3 lastPosition;
		public Transform canvasDynamicCrosshair;
		public Animator crosshairAnimator;
		public string weaponCameraName;
		
		void Start () {
			InitializeReferences();
		}
		
		void Update () {
			CapturePlayerSpeed();
			ApplySpeedToAnimation();
		}

		private void CapturePlayerSpeed() {
			if(Time.time > nextCaptureTime) {
				nextCaptureTime = Time.time + captureInterval;
				playerSpeed = (playerTransform.position - lastPosition).magnitude / captureInterval;
				lastPosition = playerTransform.position;
				gunMaster.CallEventSpeedCaptured(playerSpeed);
			}
		}

		private void ApplySpeedToAnimation() {
			if(crosshairAnimator != null)
				crosshairAnimator.SetFloat("Speed", playerSpeed);
		}

		private void FindWeaponCamera(Transform transformToSearchThrough) {
			if(transformToSearchThrough != null) {
				if(transformToSearchThrough.name == weaponCameraName) {
					weaponCamera = transformToSearchThrough;
					return;
				}
				foreach(Transform child in transformToSearchThrough) {
					FindWeaponCamera(child);
				}
			}
		}

		private void SetCameraOnDynamicCrosshairCanvas() {
			if(canvasDynamicCrosshair != null && weaponCamera != null) {
				canvasDynamicCrosshair.GetComponent<Canvas>().renderMode = RenderMode.ScreenSpaceCamera;
				canvasDynamicCrosshair.GetComponent<Canvas>().worldCamera = weaponCamera.GetComponent<Camera>();
			}
		}

		private void SetPlayerDistanceOnDynamicCrosshairCanvas() {
			if(canvasDynamicCrosshair != null)
				canvasDynamicCrosshair.GetComponent<Canvas>().planeDistance = 1;
		}
		
		private void InitializeReferences() {
			gunMaster = GetComponent<Gun_Master>();
			playerTransform = GameManager_References._player.transform;
			FindWeaponCamera(playerTransform);
			SetCameraOnDynamicCrosshairCanvas();
			SetPlayerDistanceOnDynamicCrosshairCanvas();
		}
	}
}