using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Enemy_Master : MonoBehaviour {
		public Transform myTarget;
		public bool isOnRoute;
		public bool isNavPaused;
		public bool isAttacking;

		public delegate void GeneralEventHandler();
		public delegate void HealthEventHandler(int health);
		public delegate void NavTargetEventHandler(Transform targetTransform);

		public event GeneralEventHandler EventEnemyDie;
		public event GeneralEventHandler EventEnemyWalking;
		public event GeneralEventHandler EventEnemyReachedNavTarget;
		public event GeneralEventHandler EventEnemyAttack;
		public event GeneralEventHandler EventEnemyLostTarget;
		public event HealthEventHandler EventEnemyHealthReduction;
		public event NavTargetEventHandler EventEnemySetNavTarget;

		public void CallEventEnemyHealthReduction(int health) {
			if(EventEnemyHealthReduction != null)
				EventEnemyHealthReduction(health);
			myTarget = GameObject.FindWithTag(GameObject.Find("_GameManager").GetComponent<GameManager_References>().playerTag).transform;
		}

		public void CallEventEnemySetNavTarget(Transform targetTransform) {
			if(EventEnemySetNavTarget != null)
				EventEnemySetNavTarget(targetTransform);
			myTarget = targetTransform;
		}

		public void CallEventEnemyDie() {
			if(EventEnemyDie != null)
				EventEnemyDie();
		}

		public void CallEventEnemyWalking() {
			if(EventEnemyWalking != null)
				EventEnemyWalking();
			isAttacking = false;
		}

		public void CallEventEnemyReachedNavTarget() {
			if(EventEnemyReachedNavTarget != null)
				EventEnemyReachedNavTarget();
		}

		public void CallEventEnemyAttack() {
			if(EventEnemyAttack != null)
				EventEnemyAttack();
			isAttacking = true;
		}

		public void CallEventEnemyLostTarget() {
			if(EventEnemyLostTarget != null)
				EventEnemyLostTarget();
			myTarget = null;
			isAttacking = false;
		}
	}
}