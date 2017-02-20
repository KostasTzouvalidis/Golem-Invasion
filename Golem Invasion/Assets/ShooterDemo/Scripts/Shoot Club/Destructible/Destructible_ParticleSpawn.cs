using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Destructible_ParticleSpawn : MonoBehaviour {
		private Destructible_Master desMaster;
		public GameObject explosionEffect;

		void OnEnable() {
			InitializeReferences();
			desMaster.EventDestroyMe += SpawnExplosion;
		}
		
		void OnDisable() {
			desMaster.EventDestroyMe -= SpawnExplosion;
		}

		private void SpawnExplosion() {
			if(explosionEffect != null) {
				Instantiate(explosionEffect, transform.position, Quaternion.identity);
			}
		}
		
		private void InitializeReferences() {
			desMaster = GetComponent<Destructible_Master>();
		}
	}
}