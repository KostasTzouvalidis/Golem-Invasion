using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class Item_Transparency : MonoBehaviour {
		private Item_Master itemMaster;
		private Material primaryMaterial;
		public Material transparentMaterial;

		void OnEnable() {
			InitializeReferences();
			itemMaster.EventObjectPickUp += SetToTransparentMaterial;
			itemMaster.EventObjectThrow += SetToPrimaryMaterial;
		}
		
		void OnDisable() {
			itemMaster.EventObjectPickUp -= SetToTransparentMaterial;
			itemMaster.EventObjectThrow += SetToPrimaryMaterial;
		}
		
		void Start () {
			StartingMaterial();
		}
		
		void Update () {
			
		}

		private void StartingMaterial() {
			primaryMaterial = GetComponent<Renderer>().material;
		}

		private void SetToPrimaryMaterial() {
			GetComponent<Renderer>().material = primaryMaterial;
		}

		private void SetToTransparentMaterial() {
			GetComponent<Renderer>().material = transparentMaterial;
		}

		private void InitializeReferences() {
			itemMaster = GetComponent<Item_Master>();			
		}
	}
}