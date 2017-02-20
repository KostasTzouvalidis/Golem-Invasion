using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Destructible_ActivateShards : MonoBehaviour {
		private Destructible_Master desMaster;
		private float myMass;
		public string shardLayer = "Ignore Raycast";
		public int destroyAfterSeconds = 7;
		public GameObject shards;
		public bool shoudlShardsDisapear;
		
		void OnEnable() {
			InitializeReferences();
			desMaster.EventDestroyMe += ActivateShards;
		}
		
		void OnDisable() {
			desMaster.EventDestroyMe -= ActivateShards;
		}

		private void ActivateShards() {
			if(shards != null) {
				shards.transform.parent = null;
				shards.SetActive(true);

				foreach(Transform shard in shards.transform) {
					shard.tag = "Untagged";
					shard.gameObject.layer = LayerMask.NameToLayer(shardLayer);
					shard.GetComponent<Rigidbody>().AddExplosionForce(myMass, transform.position, 0.001f, 1, ForceMode.Impulse);
					if(shoudlShardsDisapear)
						Destroy(shard.gameObject, destroyAfterSeconds);
				}
				Destroy(shards.gameObject, destroyAfterSeconds);
			}
		}
		
		private void InitializeReferences() {
			desMaster = GetComponent<Destructible_Master>();
			if(GetComponent<Rigidbody>() != null)
				myMass = GetComponent<Rigidbody>().mass;
		}
	}
}