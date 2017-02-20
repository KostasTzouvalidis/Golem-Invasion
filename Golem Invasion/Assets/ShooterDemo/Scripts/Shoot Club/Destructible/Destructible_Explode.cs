using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Destructible_Explode : MonoBehaviour {
		private Destructible_Master desMaster;
		private float distance;
		private int damageToApply;
		private Collider[] struckColliders;
		private Transform myTransform;
		private RaycastHit rayHit;
		public float explosionRange;
		public float explosionForce;
		public int rawDamage;
		
		void OnEnable() {
			InitializeReferences();
			desMaster.EventDestroyMe += ExplosionSphere;
		}
		
		void OnDisable() {
			desMaster.EventDestroyMe -= ExplosionSphere;
			
		}

		private void ExplosionSphere() {
			myTransform.parent = null; //If health is holding the destructible item, unparent...
			GetComponent<Collider>().enabled = false; //So the linecast can't be blocked

			struckColliders = Physics.OverlapSphere(myTransform.position, explosionRange);
			foreach(Collider col in struckColliders) {
				distance = Vector3.Distance(myTransform.position, col.transform.position);
				damageToApply = (int)Mathf.Abs((1 - (distance / explosionRange)) * rawDamage * 3);
				if(Physics.Linecast(myTransform.position, col.transform.position, out rayHit)) {
					if(rayHit.transform == col.transform || col.transform.GetComponent<Enemy_TakeDamage>() != null) {
						if(col.name == "ExplodingBarrel") {
							col.SendMessage("ProcessDamage", col.GetComponent<Destructible_Health>().health, SendMessageOptions.DontRequireReceiver);
						}
						else {
							col.SendMessage("ProcessDamage", damageToApply, SendMessageOptions.DontRequireReceiver);
							col.SendMessage("CallEventPlayerHealthReduction", damageToApply, SendMessageOptions.DontRequireReceiver);
						}
						Debug.Log(rayHit.transform.name + "!");
					}
				}
				if(col.GetComponent<Rigidbody>() != null) {
					col.GetComponent<Rigidbody>().AddExplosionForce(explosionForce, myTransform.position, explosionRange, 1, ForceMode.Impulse);
				}
				Debug.Log(col.name);
			}
			Destroy(gameObject, 0.05f);
		}
		
		private void InitializeReferences() {
			desMaster = GetComponent<Destructible_Master>();
			myTransform = transform;
		}
	}
}