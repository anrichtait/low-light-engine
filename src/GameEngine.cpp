#include "../include/GameEngine.hpp"
#include <raylib.h>

const int SCREEN_WIDTH = 800;
const int SCREEN_HEIGHT = 450;

void GameEngine::Initialize() {
    InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "engine");
    SetTargetFPS(60);
}

void GameEngine::Input() {
    if (IsKeyDown(KEY_ESCAPE)) {
        ge_Running = false;
    }
}

void GameEngine::Update() {
    // Variable update logic (e.g., animations, non-critical updates)
}

void GameEngine::FixedUpdate() {
    // Fixed update logic (e.g., physics, AI, simulation)
}

void GameEngine::Render(double alpha) {
    BeginDrawing();
    {
        ClearBackground(GRAY);
        // Example: interpolate a moving circle's x position
        // Suppose we have two positions: previousX and currentX
        // For demonstration, let’s assume these values:
        float previousX = SCREEN_WIDTH / 5.0f;
        float currentX = SCREEN_WIDTH / 3.0f;
        float interpolatedX = previousX * (1.0 - alpha) + currentX * alpha;
        DrawCircle(interpolatedX, 120, 35, DARKBLUE);
    }
    EndDrawing();
}

void GameEngine::Clean() {
    CloseWindow();
}

