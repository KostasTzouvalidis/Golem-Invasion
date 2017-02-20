using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Item_Name : MonoBehaviour {
		public string itemName;

		void Start() {
			SetItemName();
		}
		
		void SetItemName() {
			this.transform.name = itemName;
		}
	}
}