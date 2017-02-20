using UnityEngine;
using System.Collections;

namespace ShootClub {
	public class MainMenu : MonoBehaviour {

		public void NewGame() {
			Time.timeScale = 1;
			Application.LoadLevel(1);
		}

		public void ExitGame() {
			Application.Quit();
		}
	}
}