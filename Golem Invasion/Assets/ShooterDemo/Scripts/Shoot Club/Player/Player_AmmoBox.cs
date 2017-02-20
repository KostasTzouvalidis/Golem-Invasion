using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

namespace ShootClub {
	public class Player_AmmoBox : MonoBehaviour {
		private Player_Master playerMaster;
		private Text ammoText;
		public GameObject canvasAmmoText;

		[System.Serializable]
		public class AmmoType {
			[SerializeField] private string ammoName;
			[SerializeField] private int ammoCarrying;
			[SerializeField] private int ammoMaxQuantity;

			public AmmoType(string ammoName, int ammoCarrying, int ammoMaxQuantity) {
				this.ammoName = ammoName;
				this.ammoCarrying = ammoCarrying;
				this.ammoMaxQuantity = ammoMaxQuantity;

				if(ammoCarrying < 0)
					this.ammoCarrying = 0;
			}

			public void setAmmoName(string ammoName) {
				this.ammoName = ammoName;
			}
			public void setAmmoCarrying(int ammoCarrying) {
				this.ammoCarrying = ammoCarrying;
			}
			public void setAmmoMaxQuantity(int ammoMaxQuantity) {
				this.ammoMaxQuantity = ammoMaxQuantity;
			}
			public string getAmmoName() {
				return ammoName;
			}
			public int getAmmoCarrying() {
				return ammoCarrying;
			}
			public int getAmmoMaxQuantity() {
				return ammoMaxQuantity;
			}

			public void addAmmo(int ammoQuantity) {
				ammoCarrying += ammoQuantity;
				if(ammoCarrying > ammoMaxQuantity)
					ammoCarrying = ammoMaxQuantity;
			}
		}

		public List<AmmoType> ammunitionTypes = new List<AmmoType>();

		void OnEnable() {
			InitializeReferences();
			playerMaster.EventAmmoPickedUp += PickedUpAmmo;
		}
		
		void OnDisable() {
			playerMaster.EventAmmoPickedUp -= PickedUpAmmo;			
		}

		private void PickedUpAmmo(string ammoName, int quantity) {
			for(int i=0; i<ammunitionTypes.Count; i++) {
				if(ammunitionTypes[i].getAmmoName() == ammoName) {
					ammunitionTypes[i].addAmmo(quantity);
					playerMaster.CallEventAmmoChangedE();
					ammoText.text = "Picked up " + quantity + " of ammo " + ammoName;
					StartCoroutine(ActivateCanvasAmmoText());
					break;
				}
			}
		}

		private IEnumerator ActivateCanvasAmmoText() {
			canvasAmmoText.SetActive(true);
			yield return new WaitForSeconds(2);
			canvasAmmoText.SetActive(false);
		}
		
		private void InitializeReferences() {
			playerMaster = GetComponent<Player_Master>();
			ammoText = canvasAmmoText.transform.GetChild(0).GetChild(0).GetComponent<Text>();
		}
	}
}