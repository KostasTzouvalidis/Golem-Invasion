using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Enemy_NavWander : MonoBehaviour {
		private Enemy_Master enemyMaster;
		private UnityEngine.AI.NavMeshAgent myNavMeshAgent;
		private Transform myTransform;
		private UnityEngine.AI.NavMeshHit navHit;
		private Vector3 wanderTarget;
		private float checkRate;
		private float nextCheck;
		public float wanderRange = 10;

		void OnEnable() {
			InitializeReferences();
			enemyMaster.EventEnemyDie += DisableThis;
		}
		
		void OnDisable() {
			enemyMaster.EventEnemyDie -= DisableThis;
		}
		
		void Update () {
			if(Time.time > nextCheck) {
				nextCheck = Time.time + checkRate;
				CheckIfShouldWander();
			}
		}

		private void CheckIfShouldWander() {
			if(enemyMaster.myTarget == null && !enemyMaster.isOnRoute &&
			   !enemyMaster.isAttacking && !enemyMaster.isNavPaused) {
				if(RandomWanderTarget(myTransform.position, wanderRange, out wanderTarget)) {
					myNavMeshAgent.SetDestination(wanderTarget);
					enemyMaster.isOnRoute = true;
					enemyMaster.CallEventEnemyWalking();
				}
			}
		}

		/*Get Random position inside a UnitSphere, then gonna find a place on the NaMesh
		  that corresponds to. If is acceptable that will be the next destination (result) */
		private bool RandomWanderTarget(Vector3 center, float range, out Vector3 result) {
			Vector3 randomPoint = center + Random.insideUnitSphere * wanderRange;
			if(UnityEngine.AI.NavMesh.SamplePosition(randomPoint, out navHit, 1, UnityEngine.AI.NavMesh.AllAreas)) {
				result = navHit.position;
				return true;
			}
			else {
				result = center;
				return false;
			}
		}

		private void DisableThis() {
			this.enabled = false;
		}

		private void InitializeReferences() {
			enemyMaster = GetComponent<Enemy_Master>();
			myTransform = this.transform;
			if(GetComponent<UnityEngine.AI.NavMeshAgent>() != null)
				myNavMeshAgent = GetComponent<UnityEngine.AI.NavMeshAgent>();
			checkRate = Random.Range(0.1f, 0.2f);
		}
	}
}