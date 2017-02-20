using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Enemy_NavPursue : MonoBehaviour {
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
		
		void Update () {
			if(Time.time > nextCheck){
				nextCheck = Time.time + checkRate;
				TryToChaseTarget();
			}
		}

		private void TryToChaseTarget() {
			if(enemyMaster.myTarget != null && myNavMeshAgent != null && !enemyMaster.isNavPaused){
				myNavMeshAgent.SetDestination(enemyMaster.myTarget.position);
				if(myNavMeshAgent.remainingDistance > myNavMeshAgent.stoppingDistance) {
					enemyMaster.CallEventEnemyWalking();
					enemyMaster.isOnRoute = true;
				}
			}
		}

		private void DisableThis() {
			if(myNavMeshAgent != null)
				myNavMeshAgent.enabled = false;
			this.enabled = false;
		}

		private void InitializeReferences() {
			enemyMaster = GetComponent<Enemy_Master>();
			if(GetComponent<UnityEngine.AI.NavMeshAgent>() != null)
				myNavMeshAgent = GetComponent<UnityEngine.AI.NavMeshAgent>();
			checkRate = Random.Range(0.1f, 0.3f);
		}
	}
}