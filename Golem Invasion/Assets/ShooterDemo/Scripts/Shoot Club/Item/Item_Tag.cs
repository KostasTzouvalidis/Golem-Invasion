using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Item_Tag : MonoBehaviour {
		public string itemTag;

		void OnEnable() {
			SetTag();
		}

		void SetTag() {
			if(itemTag == "")
				itemTag = "Untagged";
			this.transform.tag = itemTag;
		}
	}
}