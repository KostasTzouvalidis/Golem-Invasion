using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Item_Master : MonoBehaviour {
		private Player_Master playerMaster;
		public delegate void GeneralEventHandler();
		public delegate void PickUpActionEventHandler(Transform item);

		public event GeneralEventHandler EventObjectThrow;
		public event GeneralEventHandler EventObjectPickUp;
		public event PickUpActionEventHandler EventPickUpAction;
		public event PickUpActionEventHandler EventJustPickUpAction;
		
		void Start() {
			InitializeReferences();
		}
		
		public void CallEventObjectThrow() {
			if(EventObjectThrow != null) {
				EventObjectThrow();
				playerMaster.CallEventHandsEmpty();
				playerMaster.CallEventInventoryChanged();
			}
		}

		public void CallEventObjectPickUp() {
			if(EventObjectPickUp != null) {
				EventObjectPickUp();
				playerMaster.CallEventInventoryChanged();
			}
		}

		public void CallEventJustObjectPickUp() {
			if(EventObjectPickUp != null) {
				EventObjectPickUp();
				playerMaster.CallEventInventoryChanged();
			}
		}

		public void CallEventPickUpAction(Transform item) {
			if(EventPickUpAction != null)
				EventPickUpAction(item);
		}

		public void CallEventJustPickUpAction(Transform item) {
			if(EventJustPickUpAction != null)
				EventJustPickUpAction(item);
		}

		private void InitializeReferences() {
			if(GameManager_References._player != null)
				playerMaster = GameManager_References._player.GetComponent<Player_Master>();
		}
	}
}