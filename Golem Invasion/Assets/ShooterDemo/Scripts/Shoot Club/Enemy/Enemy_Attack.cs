using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Enemy_Attack : MonoBehaviour {
		private Enemy_Master enemyMaster;
		private Transform attackTarget;
		private Transform myTransform;
		private float attackRate;
		private float nextAttack;
		public float attackRange = 3.5f;
		public int attackDamage = 15;
		
		void OnEnable() {
			InitializeReferences();
			enemyMaster.EventEnemyDie += DisableThis;
			enemyMaster.EventEnemySetNavTarget += SetAttackTarget;
		}
		
		void OnDisable() {
			enemyMaster.EventEnemyDie -= DisableThis;
			enemyMaster.EventEnemySetNavTarget -= SetAttackTarget;
		}
		
		void Update () {
			TryToAttack();
		}
		
		//Called by Attack Animation
		public void OnEnemyAttack() {
			if(attackTarget != null) {
				if(Vector3.Distance(myTransform.position, attackTarget.position) <= attackRange &&
				   attackTarget.GetComponent<Player_Master>() != null && !attackTarget.GetComponent<Player_Master>().isDead) {
					Vector3 toOther = attackTarget.position - myTransform.position; //Direction Vector

					//If player is in front of the enemy
					if(Vector3.Dot(toOther, myTransform.forward) > 0.5f)
						attackTarget.GetComponent<Player_Master>().CallEventPlayerHealthReduction(attackDamage);
				}
			}
		}

		private void SetAttackTarget(Transform attackTarget) {
			this.attackTarget = attackTarget;
		}

		private void TryToAttack() {
			if(attackTarget != null) {
				if(Time.time > nextAttack) {
					nextAttack = Time.time + attackRate;
					if(Vector3.Distance(myTransform.position, attackTarget.position) <= attackRange) {
						Vector3 lookAtVector = new Vector3(attackTarget.position.x, myTransform.position.y, attackTarget.position.z);
						myTransform.LookAt(lookAtVector);
						enemyMaster.CallEventEnemyAttack();
						enemyMaster.isOnRoute = false;
					}
				}
			}
		}

		private void DisableThis() {
			this.enabled = false;
		}
		
		private void InitializeReferences() {
			enemyMaster = GetComponent<Enemy_Master>();
			myTransform = this.transform;
			attackRate = 0.9f;
		}
	}
}