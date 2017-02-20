using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Enemy_Detection : MonoBehaviour {
		private Enemy_Master enemyMaster;
		private Transform myTransform;
		private float checkRate;
		private float nextCheck;
		private RaycastHit hit;
		public Transform head;
		public LayerMask playerLayer;
		public LayerMask sightLayer;
		public float detectRadius = 20;

		void OnEnable() {
			InitializeReferences();
			enemyMaster.EventEnemyDie += DisableThis;
		}
		
		void OnDisable() {
			enemyMaster.EventEnemyDie -= DisableThis;
		}
		
		void Update () {
			CarryOutDetection();
		}

		private void CarryOutDetection() {
			if(Time.time > nextCheck) {
				nextCheck = Time.time + checkRate;
				Collider[] colliders = Physics.OverlapSphere(myTransform.position, detectRadius, playerLayer);
				if(colliders.Length > 0) {
					foreach(Collider col in colliders) {
						if(col.CompareTag(GameManager_References._playerTag) || col.CompareTag("Player"))
							if(CanTargetBeSeen(col.transform))
								break;
					}
				}
				else
					enemyMaster.CallEventEnemyLostTarget();
			}
		}

		private bool CanTargetBeSeen(Transform target) {
			if(Physics.Linecast(head.position, target.position, out hit, sightLayer)) {
				if(hit.transform == target) {
					enemyMaster.CallEventEnemySetNavTarget(target);
					return true;
				}
				else {
					enemyMaster.CallEventEnemyLostTarget();
					return false;
				}
			}
			else {
				WaitToLoseTarget();
				return false;
			}
		}

		private IEnumerator WaitToLoseTarget() {
			yield return new WaitForSeconds(4);
			enemyMaster.CallEventEnemyLostTarget();
		}

		private void DisableThis() {

		}

		private void InitializeReferences() {
			enemyMaster = GetComponent<Enemy_Master>();
			myTransform = this.transform;
			if(head == null)
				head = myTransform;
			checkRate = Random.Range(0.7f, 1);
		}
	}
}