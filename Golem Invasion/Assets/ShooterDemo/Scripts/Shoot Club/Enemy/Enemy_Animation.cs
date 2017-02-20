using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Enemy_Animation : MonoBehaviour {
		private Enemy_Master enemyMaster;
		private Animator myAnimator;

		void OnEnable() {
			InitializeReferences();
			enemyMaster.EventEnemyDie += DisableAnimator;
			enemyMaster.EventEnemyWalking += SetAnimationToWalk;
			enemyMaster.EventEnemyReachedNavTarget += SetAnimationToIdle;
			enemyMaster.EventEnemyAttack += SetAnimationToAttack;
			enemyMaster.EventEnemyHealthReduction += SetAnimationToStruck;
		}
		
		void OnDisable() {
			enemyMaster.EventEnemyDie -= DisableAnimator;
			enemyMaster.EventEnemyWalking -= SetAnimationToWalk;
			enemyMaster.EventEnemyReachedNavTarget -= SetAnimationToIdle;
			enemyMaster.EventEnemyAttack -= SetAnimationToAttack;
			enemyMaster.EventEnemyHealthReduction -= SetAnimationToStruck;
		}

		private void SetAnimationToWalk() {
			if(myAnimator != null) {
				if(myAnimator.enabled) {
					myAnimator.SetBool("isPursuing", true);
				}
			}
		}

		private void SetAnimationToIdle() {
			if(myAnimator != null) {
				if(myAnimator.enabled) {
					myAnimator.SetBool("isPursuing", false);
				}
			}
		}

		private void SetAnimationToAttack() {
			if(myAnimator != null) {
				if(myAnimator.enabled) {
					myAnimator.SetTrigger("Attack");
				}
			}
		}

		private void SetAnimationToStruck(int dummy) {
			if(myAnimator != null) {
				if(myAnimator.enabled) {
					myAnimator.SetTrigger("Struck");
				}
			}
		}

		private void DisableAnimator() {
			if(myAnimator != null) {
				myAnimator.enabled = false;
			}
		}

		private void InitializeReferences() {
			enemyMaster = GetComponent<Enemy_Master>();
			if(GetComponent<Animator>() != null)
				myAnimator = GetComponent<Animator>();
		}
	}
}