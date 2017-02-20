using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Enemy_NavPause : MonoBehaviour {
		private Enemy_Master enemyMaster;
		private UnityEngine.AI.NavMeshAgent myNavMeshAgent;
		private float pauseDuration;

		void OnEnable() {
			InitializeReferences();
			enemyMaster.EventEnemyDie += DisableThis;
			enemyMaster.EventEnemyHealthReduction += PauseNavMeshAgent;
		}
		
		void OnDisable() {
			enemyMaster.EventEnemyDie -= DisableThis;
			enemyMaster.EventEnemyHealthReduction -= PauseNavMeshAgent;
		}

		private void PauseNavMeshAgent(int dum) {
			if(myNavMeshAgent != null) {
				if(myNavMeshAgent.enabled) {
					myNavMeshAgent.ResetPath();
					enemyMaster.isNavPaused = true;
					StartCoroutine(RestartNavMeshAgent());
				}
			}
		}

		private IEnumerator RestartNavMeshAgent() {
			yield return new WaitForSeconds(pauseDuration);
			enemyMaster.isNavPaused = false;
		}

		private void DisableThis() {
			StopAllCoroutines();
		}

		private void InitializeReferences() {
			enemyMaster = GetComponent<Enemy_Master>();
			if(GetComponent<UnityEngine.AI.NavMeshAgent>() != null)
				myNavMeshAgent = GetComponent<UnityEngine.AI.NavMeshAgent>();
			pauseDuration = 0.3f;
		}
	}
}