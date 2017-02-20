using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Gun_Shoot : MonoBehaviour {
		private Gun_Master gunMaster;
		private Transform myTransform;
		private Transform camTransform;
		private RaycastHit rayHit;
		private float offsetFactor = 7;
		private Vector3 startPosition;
		public float range = 500;
		
		void OnEnable() {
			InitializeReferences();
			gunMaster.EventPlayerInput += OpenFire;
			gunMaster.EventSpeedCaptured += SetStartOfShootingPosition;
		}
		
		void OnDisable() {
			gunMaster.EventPlayerInput -= OpenFire;
			gunMaster.EventSpeedCaptured -= SetStartOfShootingPosition;
		}

		void Start() {
		}

		private void OpenFire() {
			//Debug.Log ("Open Fire Called!");
			if(Physics.Raycast(camTransform.TransformPoint(startPosition), camTransform.forward, out rayHit, range)) {
				gunMaster.CallEventShotDefault(rayHit.point, rayHit.transform);
				if(rayHit.transform.CompareTag(GameManager_References._enemyTag))
					gunMaster.CallEventShotEnemy(rayHit.point, rayHit.transform);
			}
		}

		private void SetStartOfShootingPosition(float playerSpeed) {
			float offset = playerSpeed / offsetFactor;
			startPosition = new Vector3(Random.Range(-offset, offset), Random.Range(-offset, offset), 1);
		}
		
		private void InitializeReferences() {
			gunMaster = GetComponent<Gun_Master>();
			myTransform = transform;
			camTransform = myTransform.parent;
		}
	}
}