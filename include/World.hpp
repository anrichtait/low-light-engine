#pragma once

#include "GameActor.hpp"
#include <vector>

class World {
	public:
		void PushActor(GameActor* actor) {
			actors.push_back(actor);
		}

		void PopActor(GameActor* actor) {
			// remove actor from world
		}

		void Update() {
			for (GameActor* actor : actors) {
				actor -> Update();
			}
		}

		void FixedUpdate() {
			for (GameActor* actor : actors) {
				actor -> FixedUpdate();
			}
		}




	private:
		std::vector<GameActor*> actors;
};
