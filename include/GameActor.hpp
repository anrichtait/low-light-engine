#pragma once

#include "Component.hpp"
#include <vector>

class GameActor {
	public:
		void AddComponent(Component* component) {
			components.push_back(component);
		}

		void Update() {
			for (Component* component : components) {
				component->Update();
			}
		}

		void FixedUpdate() {
			for (Component* component : components) {
				component->FixedUpdate();
			}
		}

	private:
		std::vector<Component*> components;
};
