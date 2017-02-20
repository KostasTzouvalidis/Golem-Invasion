using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Enemy_Rigidbody : MonoBehaviour {
		private Enemy_Master enemyMaster;
		
		void OnEnable() {
			InitializeReferences();
			enemyMaster.EventEnemyDie += DisableRigidbody;			
		}
		
		void OnDisable() {
			enemyMaster.EventEnemyDie -= DisableRigidbody;			
		}

		private void DisableRigidbody() {
			if(GetComponent<Rigidbody>() != null)
				GetComponent<Rigidbody>().isKinematic = true;
		}

		private void InitializeReferences() {
			enemyMaster = this.transform.root.GetComponent<Enemy_Master>();	
		}
	}
}