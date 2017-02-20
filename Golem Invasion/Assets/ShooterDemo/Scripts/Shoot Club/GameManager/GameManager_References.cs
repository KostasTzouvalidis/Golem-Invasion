using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class GameManager_References : MonoBehaviour {
		public string playerTag;
		public static string _playerTag;
		public string enemyTag;
		public static string _enemyTag;
		public static GameObject _player;

		void OnEnable() {
			if(playerTag == "")
				Debug.LogWarning("Please type the name of the player tag in the GameManager_References.");
			if(enemyTag == "")
				Debug.LogWarning("Please type the name of the enemy tag in the GameManager_References.");

			_playerTag = playerTag;
			//Golem - Head and CollisionField game objects are tagged "Enemy" only.
			_enemyTag = enemyTag;
			_player = GameObject.FindGameObjectWithTag(_playerTag);
			if(_player == null)
				Debug.LogWarning("Player is null");
		}
	}
}