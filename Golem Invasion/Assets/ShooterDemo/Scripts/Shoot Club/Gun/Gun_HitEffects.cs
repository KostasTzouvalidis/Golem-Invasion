using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Gun_HitEffects : MonoBehaviour {
		private Gun_Master gunMaster;
		public GameObject defaultHitEffect;
		public GameObject enemyHitEffect;
		
		void OnEnable() {
			InitializeReferences();
			gunMaster.EventShotDefault += SpawnDefaultHitEffect;
			gunMaster.EventShotEnemy += SpawnEnemyHitEffect;
		}
		
		void OnDisable() {
			gunMaster.EventShotDefault -= SpawnDefaultHitEffect;
			gunMaster.EventShotEnemy -= SpawnEnemyHitEffect;			
		}

		private void SpawnDefaultHitEffect(Vector3 hitPosition, Transform hitTransform) {
			if(defaultHitEffect != null)
				Instantiate(defaultHitEffect, hitPosition, Quaternion.identity);
		}

		private void SpawnEnemyHitEffect(Vector3 hitPosition, Transform hitTransform) {
			if(enemyHitEffect != null)
				Instantiate(enemyHitEffect, hitPosition, Quaternion.identity);
		}

		private void InitializeReferences() {
			gunMaster = GetComponent<Gun_Master>();			
		}
	}
}