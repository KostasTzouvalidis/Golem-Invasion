using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Player_DetectItem : MonoBehaviour {
		[Tooltip("What layer is being used to be able to detect items")]
		public LayerMask detectionLayer;
		[Tooltip("Transform origin of the ray")]
		public Transform rayPivot;
		[Tooltip("Input button used to pick up the item")]
		public string pickUpButton;

		private Transform itemAvailableForPickUp;
		private RaycastHit rayHit;
		private float detectRange;
		private float detectRadius;
		private bool isItemInRange;

		private float labelWidth;
		private float labelHeight;
		public GUIStyle textStyle;
		
		void Start () {
			InitializeReferences();
		}
		
		void Update () {
			CastRayForDetectItems();
			CheckItemPickUp();
		}

		private void CastRayForDetectItems() {
			if(Physics.SphereCast(rayPivot.position, detectRadius, rayPivot.forward, out rayHit, detectRange, detectionLayer) &&
			   rayHit.rigidbody != null && !rayHit.rigidbody.isKinematic) {
				itemAvailableForPickUp = rayHit.transform;
				isItemInRange = true;
			}
			else
				isItemInRange = false;
		}

		private void CheckItemPickUp() {
			if(Input.GetButtonUp(pickUpButton) && Time.timeScale > 0 && isItemInRange) {
				if(rayHit.transform.gameObject.layer == 9)
					itemAvailableForPickUp.GetComponent<Item_Master>().CallEventPickUpAction(rayPivot);
				if(rayHit.transform.gameObject.layer == 13)
					itemAvailableForPickUp.GetComponent<Item_Master>().CallEventJustPickUpAction(rayPivot);
			}
		}

		private void OnGUI() {
			if(isItemInRange && itemAvailableForPickUp != null) {
				GUI.Label(new Rect(Screen.width / 2 - labelWidth / 2, Screen.height / 10, labelWidth, labelHeight),
				          itemAvailableForPickUp.name + " - E to pick up", textStyle);
			}
		}

		private void InitializeReferences() {
			detectRange = 2.5f;
			detectRadius = 0.5f;
			labelWidth = 300;
			labelHeight = 75;
		}
	}
}