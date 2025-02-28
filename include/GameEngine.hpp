#pragma once

class GameEngine {
	public:
		GameEngine() : ge_Running(true) {}
		~GameEngine() {}

		void Initialize();     // load necessary assets, scenes, resources
		void Input();          // check for player input
		void Update();         // updated once per frame 
		void FixedUpdate();    // called at a fixed time step (used for sim related code, pyhsics, ai)
		void Render(double alpha);         // camera and rendering updates
		void Clean();			// cleans up all variables and data before quitting

		bool Running() {return ge_Running; }

	private:
		bool ge_Running;
};
