use macroquad::experimental::animation::*;
use macroquad::prelude::*;
use miniquad::window::set_window_size;

enum GameState {
    MainMenu,
    Playing,
    Paused,
}

struct StateManager {
    current_state: GameState,
}

impl StateManager {
    fn new() -> Self {
        Self {
            current_state: GameState::MainMenu,
        }
    }
    fn set_state(&mut self, state: GameState) {
        self.current_state = state;
    }

    fn get_state(&self) -> &GameState {
        &self.current_state
    }
}

#[macroquad::main("low-light-engine")]
async fn main() {
    set_window_size(1280, 720);
    set_fullscreen(false);


    let mut state_manager = StateManager::new();


    let mut william = AnimatedSprite::new(
        64,
        64,
        &[ 
            Animation {
                name: "idle".to_string(),
                row: 0,
                frames: 5,
                fps: 12,
            },
            Animation {
                name: "walk_south".to_string(),
                row: 1,
                frames: 6,
                fps: 12,
            },
            Animation {
                name: "walk_north".to_string(),
                row: 2,
                frames: 6,
                fps: 12,
            },
            Animation {
                name: "walk_east".to_string(),
                row: 3,
                frames: 6,
                fps: 12,
            },
            Animation {
                name: "walk_west".to_string(),
                row: 4,
                frames: 6,
                fps: 12,
            }
        ], true);

    let william_texture = load_texture("assets/william.png").await.unwrap();
    let mut william_pos: Vec2 = Vec2::new(50.0, 50.0);
    let mut camera = Camera2D { target: william_pos, zoom: vec2(1.0, 1.0), ..Default::default() }; // Adjusted zoom.

    let mut maps = vec![
        "prototype",
        "level 1",
        "level 2",
        "level 3",
    ];

    let current_map = maps[0];



    //
    //  Game Loop
    //

    loop {
        let screen_size = vec2(screen_width(), screen_height());
        camera.zoom = vec2(2.0 / screen_size.x, 2.0 / screen_size.y); // Set the zoom based on actual screen size.

        clear_background(DARKGRAY);

        match state_manager.get_state() {
            GameState::MainMenu => {
                draw_text("Main Menu - Press SPACE to Play!", 50.0, 20.0, 30.0, WHITE);

                if is_key_pressed(KeyCode::Space) {
                    state_manager.set_state(GameState::Playing);
                }
            }
            GameState::Playing => {

            }
            GameState::Paused => {

            }
        }

        set_camera(&camera);
        handle_input(&mut william_pos, &mut william); // Pass mutable reference here

        camera.target = william_pos;

        draw_texture_ex(
            &william_texture,
            william_pos.x,
            william_pos.y,
            WHITE,
            DrawTextureParams {
                source: Some(william.frame().source_rect),
                dest_size: Some(william.frame().dest_size),
                ..Default::default()
            },
        );
        debug_options(william_pos);

        william.update();

        next_frame().await;
    }
}

fn debug_options(entity_pos: Vec2) {
    println!("entity_pos: {entity_pos}");
}

fn handle_input(player_pos: &mut Vec2, player: &mut AnimatedSprite) {
    if is_key_down(KeyCode::S) {
        player_pos.y += 2.0;
        animation_player(1, player); // Pass mutable reference here
    } else if is_key_down(KeyCode::W) {
        player_pos.y -= 2.0;
        animation_player(2, player); // Pass mutable reference here
    } else if is_key_down(KeyCode::D) {
        player_pos.x += 2.0;
        animation_player(3, player); // Pass mutable reference here
    } else if is_key_down(KeyCode::A) {
        player_pos.x -= 2.0;
        animation_player(4, player); // Pass mutable reference here
    }
    else {
        animation_player(0, player); // Pass mutable reference here
    }
}

fn animation_player(anim_index: usize, entity: &mut AnimatedSprite) {
    entity.set_animation(anim_index); // Pass the index directly.
}

