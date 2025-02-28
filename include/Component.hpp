#pragma once

// forward declaration
class GameActor;

class Component {
	public:
		Component(GameActor* owner) : owner(owner) {}

		// if not sim code
		void Update() {
			// implementation of Component
		}

		void FixedUpdate() {
			// implementation of Component
		}


	private:
		GameActor* owner;
};
