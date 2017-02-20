using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Door_Spawn : MonoBehaviour {
		public GameObject[] spawners;

		public void CallSpawners() {
			for(int i=0; i<spawners.Length; i++) {
				spawners[i].GetComponent<Spawner>().SpawnObjects();
			}
		}
	}
}