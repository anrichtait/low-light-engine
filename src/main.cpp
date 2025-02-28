#include "GameEngine.h"
#include <chrono>
#include <iostream>

int main(void) {
	GameEngine game;
	game.Initialize();

	auto previous = std::chrono::high_resolution_clock::now();
	double lag = 0.0;
	const double FIXED_UPDATE_INTERVAL = 1.0 / 60.0;
	const double MAX_LAG = 0.25; // Maximum lag to avoid spiral of death

	while (game.Running()) {
		auto current = std::chrono::high_resolution_clock::now();
		// Convert duration to seconds
		double deltaTime = std::chrono::duration<double>(current - previous).count();
		previous = current;

		// Clamp deltaTime to avoid issues if a frame takes too long
		if (deltaTime > MAX_LAG) {
			std::cout << "W: DeltaTime too high: " << deltaTime << ". Clamping to MAX_LAG (" << MAX_LAG << ").\n";
			deltaTime = MAX_LAG;
		}
		lag += deltaTime;

		game.Input();
		game.Update();

		int fixedUpdateCount = 0;
		while (lag >= FIXED_UPDATE_INTERVAL) {
			game.FixedUpdate();
			lag -= FIXED_UPDATE_INTERVAL;
			fixedUpdateCount++;

			// If too many fixed updates occur in one frame, log a warning and break to catch up
			if (fixedUpdateCount > 5) {
				std::cout << "Excessive fixed updates: " << fixedUpdateCount << " in one frame.\n";
				break;
			}
		}

		// Calculate the interpolation factor for smooth rendering between fixed updates
		double alpha = lag / FIXED_UPDATE_INTERVAL;
		game.Render(alpha);
	}

	game.Clean();
	return 0;
}

