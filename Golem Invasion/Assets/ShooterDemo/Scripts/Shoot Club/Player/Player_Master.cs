using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Player_Master : MonoBehaviour {
		public bool isDead;
		public bool hasItemJust;
		public bool hasMainKey = false;

		public delegate void GeneralEventHandler();
		public delegate void AmmoPickUpEventHandler(string ammoName, int ammoQuantity);
		public delegate void PlayerHealthEventHandler(int healthChange);

		public event GeneralEventHandler EventInventoryChanged;
		public event GeneralEventHandler EventHandsEmpty;
		public event GeneralEventHandler EventAmmoChanged;
		public event AmmoPickUpEventHandler EventAmmoPickedUp;
		public event PlayerHealthEventHandler EventPlayerHealthReduce;
		public event PlayerHealthEventHandler EventPlayerHealthIncrease;

		public void CallEventInventoryChanged() {
			if(EventInventoryChanged != null)
				EventInventoryChanged();
		}

		public void CallEventHandsEmpty() {
			if(EventHandsEmpty != null)
				EventHandsEmpty();
		}

		public void CallEventAmmoChangedE() {
			if(EventAmmoChanged != null)
				EventAmmoChanged();
		}

		public void CallEventAmmoPickedUp(string ammoName, int ammoQuantity) {
			if(EventAmmoPickedUp != null)
				EventAmmoPickedUp(ammoName, ammoQuantity);
		}

		public void CallEventPlayerHealthReduction(int healthDamage) {
			if(EventPlayerHealthReduce != null)
				EventPlayerHealthReduce(healthDamage);
		}

		public void CallEventPlayerHealthIncrease(int healthHealed) {
			if(EventPlayerHealthIncrease != null)
				EventPlayerHealthIncrease(healthHealed);
		}
	}
}