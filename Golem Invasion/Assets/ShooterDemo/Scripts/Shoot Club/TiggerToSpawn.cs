using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class TiggerToSpawn : MonoBehaviour {
		
		public GameObject[] spawners;

		void OnTriggerEnter(Collider col) {
			if(col.CompareTag(GameManager_References._playerTag)) {
				for(int i=0; i<spawners.Length; i++) {
					spawners[i].GetComponent<Spawner>().SpawnObjects();
				}
				col.GetComponent<Player_Master>().hasMainKey = true;
				Destroy(transform.root.gameObject, 0.1f);
			}
		}
	}
}