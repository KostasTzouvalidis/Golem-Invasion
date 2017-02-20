using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Enemy_NavDestinationReached : MonoBehaviour {
		private Enemy_Master enemyMaster;
		private UnityEngine.AI.NavMeshAgent myNavMeshAgent;
		private float checkRate;
		private float nextCheck;

		
		void OnEnable() {
			InitializeReferences();
			enemyMaster.EventEnemyDie += DisableThis;
		}
		
		void OnDisable() {
			enemyMaster.EventEnemyDie -= DisableThis;
		}
		
		void Start () {
			
		}
		
		void Update () {
			if(Time.time > nextCheck) {
				nextCheck = Time.time + checkRate;
				CheckIfDestinationReached();
			}
		}

		private void CheckIfDestinationReached() {
			if(enemyMaster.isOnRoute) {
				if(myNavMeshAgent.enabled && myNavMeshAgent.remainingDistance < myNavMeshAgent.stoppingDistance) {
					enemyMaster.isOnRoute = false;
					enemyMaster.CallEventEnemyReachedNavTarget();
				}
			}
		}

		private void DisableThis() {

		}
		
		private void InitializeReferences() {
			enemyMaster = GetComponent<Enemy_Master>();		
			if(GetComponent<UnityEngine.AI.NavMeshAgent>() != null)
				myNavMeshAgent = GetComponent<UnityEngine.AI.NavMeshAgent>();	
			checkRate = Random.Range(0.1f, 0.3f);
		}
	}
}