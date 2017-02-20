using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Spawner : MonoBehaviour {
		public GameObject objectToSpawn;
		public int numberOfSpawns = 5;
		public float radius = 3;
		private Vector3 spawnPosition;

		public void SpawnObjects() {
			Debug.Log(this.transform.name + " spawned");
			for(int i=0; i<numberOfSpawns; i++) {
				spawnPosition = transform.position + Random.insideUnitSphere * radius;
				Instantiate(objectToSpawn, spawnPosition, transform.rotation);
			}
		}
	}
}