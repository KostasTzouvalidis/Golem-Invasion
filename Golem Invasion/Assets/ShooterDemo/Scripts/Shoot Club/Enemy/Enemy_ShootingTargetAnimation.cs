using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Enemy_ShootingTargetAnimation : MonoBehaviour {
		private Enemy_Master enemyMaster;
		private Animator myAnimator;

		void OnEnable() {
			InitializeReferences();
			enemyMaster.EventEnemyDie += SetAnimationToDie;
			enemyMaster.EventEnemyDie += DisableAnimator;
		}
		
		void OnDisable() {
			enemyMaster.EventEnemyDie -= SetAnimationToDie;
			enemyMaster.EventEnemyDie -= DisableAnimator;
		}

		private void SetAnimationToDie() {
			if(myAnimator != null) {
				if(myAnimator.enabled == true)
					myAnimator.SetTrigger("Die");
			}
		}

		private void DisableAnimator() {
			if(myAnimator != null) {
				StartCoroutine(InvokeDisableAnimator());
			}
		}
		
		private IEnumerator InvokeDisableAnimator() {
			yield return new WaitForSeconds(0.2f);
			myAnimator.enabled = false;
		}

		private void InitializeReferences() {
			enemyMaster = this.transform.root.GetComponent<Enemy_Master>();
			if(GetComponent<Animator>() != null)
				myAnimator = GetComponent<Animator>();	
		}
	}
}