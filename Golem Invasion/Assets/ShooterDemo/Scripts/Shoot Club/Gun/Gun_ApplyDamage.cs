using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Gun_ApplyDamage : MonoBehaviour {
		private Gun_Master gunMaster;
		public int damage = 7;
		public Transform hitTransform;
		
		void OnEnable() {
			InitializeReferences();
			gunMaster.EventShotEnemy += ApplyDamage;
			gunMaster.EventShotDefault += ApplyDamage;
		}
		
		void OnDisable() {
			gunMaster.EventShotEnemy -= ApplyDamage;
			gunMaster.EventShotDefault -= ApplyDamage;
		}

		private void ApplyDamage(Vector3 hitPosition, Transform hitTransform) {
			hitTransform.SendMessage("ProcessDamage", damage, SendMessageOptions.DontRequireReceiver);
			/*if(hitTransform.GetComponent<Enemy_TakeDamage>() != null) {
				hitTransform.GetComponent<Enemy_TakeDamage>().ProcessDamage(damage);
			}*/
		}
		
		private void InitializeReferences() {
			gunMaster = GetComponent<Gun_Master>();
		}
	}
}