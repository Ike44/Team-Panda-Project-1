// Player Create Event
charspeed_x = 0;
charspeed_y = 0;
max_speed = 20; // Set your desired maximum speed
diagonal_speed = max_speed - 1; // Adjust diagonal speed

acceleration = 5;
deceleration = 2;

// Player Step Event

if (keyboard_check(vk_left)) {
    charspeed_x -= acceleration;
	image_xscale = -1;
	sprite_index = player_run_spr; 
}
if (keyboard_check(vk_right)) {
    charspeed_x += acceleration;
	image_xscale = 1;
	sprite_index = player_run_spr; 
}
if (keyboard_check(vk_up)) {
    charspeed_y -= acceleration;
    sprite_index = player_run_spr; 
}
if (keyboard_check(vk_down)) {
    charspeed_y += acceleration;
    sprite_index = player_run_spr; 
}

// Handle attacking
if (keyboard_check_pressed(vk_space) && state != PlayerState.Attacking && attackCooldown <= 0) {
    state = PlayerState.Attacking;
    sprite_index = player_attack_spr;
    image_index = 0;
    image_speed = 2.5; 
    attackCooldown = room_speed * 2; 
}

// Cooldown and state management
if (state == PlayerState.Attacking && image_index >= image_number - 1) {
    state = PlayerState.Idle;
    sprite_index = player_idle_spr; 
    image_speed = 1; 
}


// Decrease cooldowns 
if (attackCooldown > 0) {
    attackCooldown -= 1;
}


// Checks for collision with a bullet
if (place_meeting(x, y, bullet_obj) && !isDead) {
    isDead = true;
    state = PlayerState.Dying;
    sprite_index = player_death_spr;
    image_index = 0;
    image_speed = 1; 
}

// Process death if player has been hit
if (isDead && state != PlayerState.Dying) {
    state = PlayerState.Dying;
    sprite_index = player_death_spr;
    image_index = 0;
    image_speed = .5;
}

// Process the end of the death animation
if (state == PlayerState.Dying && image_index >= image_number - 1) {
    room_goto(GameOver);
}

// Apply speed
if (speed > max_speed) {
    speed = max_speed;
}

// Clamps
x = clamp(x, 0, room_width);
y = clamp(y, 480, room_height);

// Collision handling
/*
if (place_meeting(x, y, [brick_stack1_obj, brick_stack2_obj, brick_stack3_obj, container_tent_obj, grass1_obj, 
grass2_obj, red_circle_obj, small_street_plant1_obj, small_street_plant2_obj, street_bricks_obj, street_container_obj, 
street_device_obj, street_fixture1_obj, street_fixture2_obj, street_fixture3_obj, street_lamp_obj, street_light_obj, 
street_plant1_obj, street_plant2_obj, street_pole_obj, tent1_obj, tent2_obj, tent37_obj, water_pool1_obj, water_pool2_obj])) {
*/

if (place_meeting(x, y, [container_tent_obj,street_container_obj, 
street_device_obj, street_fixture1_obj, street_fixture2_obj, street_fixture3_obj, street_lamp_obj, 
 tent1_obj, tent2_obj, tent37_obj])) {
    charspeed_x = 0;
	charspeed_y = 0;
	
	
	var correction_amount = 1;
	
	if (keyboard_check(vk_left)) {
        x += correction_amount;
    }
    if (keyboard_check(vk_right)) {
        x -= correction_amount;
    }
    if (keyboard_check(vk_up)) {
        y += correction_amount;
    }
    if (keyboard_check(vk_down)) {
        y -= correction_amount;
    }
	
	
}

// Update position
x += charspeed_x;
y += charspeed_y;


/*
// Limit diagonal speed
if (abs(charspeed_x) + abs(charspeed_y) > max_speed) {
    var direc = point_direction(0, 0, charspeed_x, charspeed_y);
    charspeed_x = lengthdir_x(diagonal_speed, direc);
    charspeed_y = lengthdir_y(diagonal_speed, direc);
}

// Apply speed
x += charspeed_x;
y += charspeed_y;

// Collision handling
var collision_obj = instance_place(x + charspeed_x, y + charspeed_y, [brick_stack1_obj, 
						brick_stack2_obj, brick_stack3_obj, container_tent_obj, 
						grass1_obj, grass2_obj, red_circle_obj, small_street_plant1_obj, 
						small_street_plant2_obj, street_bricks_obj, street_container_obj, 
						street_device_obj, street_fixture1_obj, street_fixture2_obj, street_fixture3_obj, 
						street_lamp_obj, street_light_obj, street_plant1_obj, street_plant2_obj, street_pole_obj, 
						tent1_obj, tent2_obj, tent37_obj, water_pool1_obj, water_pool2_obj]);
if (collision_obj != noone) {
    // Adjust position to prevent overlap
    var new_x = x;
    var new_y = y;
    
    // Adjust horizontally
    if (place_meeting(x + charspeed_x, y, collision_obj)) {
        while (!place_meeting(new_x + sign(charspeed_x), new_y, collision_obj)) {
            new_x += sign(charspeed_x);
        }
        charspeed_x = 0;
    }
    // Adjust vertically
    if (place_meeting(x, y + charspeed_y, collision_obj)) {
        while (!place_meeting(new_x, new_y + sign(charspeed_y), collision_obj)) {
            new_y += sign(charspeed_y);
        }
        charspeed_y = 0;
    }
    
    // Update position
    x = new_x;
    y = new_y;
}
*/