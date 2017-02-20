using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Destructible_InventoryUpdate : MonoBehaviour {
		private Destructible_Master desMaster;
		private Player_Master playerMaster;

		void OnEnable() {
			InitializeReferences();
			desMaster.EventDestroyMe += ForceInventoryUpdate;
		}
		
		void OnDisable() {
			desMaster.EventDestroyMe -= ForceInventoryUpdate;
		}
		
		void Start () {
			InitializeReferences();
		}

		private void ForceInventoryUpdate() {
			if(playerMaster != null) {
				playerMaster.CallEventInventoryChanged();
			}
		}
		
		private void InitializeReferences() {
			desMaster = GetComponent<Destructible_Master>();
			if(GameManager_References._player != null)
				playerMaster = GameManager_References._player.GetComponent<Player_Master>();
			if(GetComponent<Item_Master>() == null) { //If the Item Master isn't attached to this GameObject
				Destroy(this);
			}
		}
	}
}