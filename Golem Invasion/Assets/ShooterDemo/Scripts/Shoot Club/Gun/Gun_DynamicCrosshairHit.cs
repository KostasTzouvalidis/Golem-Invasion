using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Gun_DynamicCrosshairHit : MonoBehaviour {
		private Gun_Master gunMaster;
		public GameObject canvasHitCrosshair;
		public float visibilityDuration = 0.5f;

		void OnEnable() {
			InitializeReferences();
			gunMaster.EventShotEnemy += TurnOnDynamicCrosshairHitEffect;
		}
		
		void OnDisable() {
			gunMaster.EventShotEnemy -= TurnOnDynamicCrosshairHitEffect;
		}

		private void TurnOnDynamicCrosshairHitEffect(Vector3 dum1, Transform dum2) {
			if(canvasHitCrosshair != null) {
				canvasHitCrosshair.SetActive(false);
				canvasHitCrosshair.SetActive(true);
				StartCoroutine(ResetDynamicCrosshairEffect());
			}
		}

		private IEnumerator ResetDynamicCrosshairEffect() {
			yield return new WaitForSeconds(visibilityDuration);
			canvasHitCrosshair.SetActive(false);
		}
		
		private void InitializeReferences() {
			gunMaster = GetComponent<Gun_Master>();			
		}
	}
}