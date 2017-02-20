using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class SpawnProximity : MonoBehaviour {
		public GameObject objectToSpawn;
		public int numberOfSpawns;
		public float proximity;

		private float checkRate;
		private float nextCheck;
		private Transform myTransform;
		private Transform playerTransform;
		private Vector3 spawnPosition;

		void Start () {
			InitializeReferences();
		}
		
		void Update () {
			CheckDistance();
		}

		private void CheckDistance() {
			if(Time.time > nextCheck) {
				nextCheck = Time.time + checkRate;
				if(Vector3.Distance(myTransform.position, playerTransform.position) < proximity) {
					SpawnObjects();
					this.enabled = false;
				}
			}
		}

		private void SpawnObjects() {
			for(int i=0; i<numberOfSpawns; i++) {
				spawnPosition = myTransform.position + Random.insideUnitSphere * 5;
				Instantiate(objectToSpawn, spawnPosition, myTransform.rotation);
			}
		}
		
		private void InitializeReferences() {
			myTransform = this.transform;
			playerTransform = GameManager_References._player.transform;
			checkRate = Random.Range(0.7f, 1.3f);
		}
	}
}