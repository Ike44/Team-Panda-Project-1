// Player Create Event
charspeed_x = 0;
charspeed_y = 0;
max_speed = 6; // Set your desired maximum speed
diagonal_speed = max_speed - 1; // Adjust diagonal speed

acceleration = 2;
deceleration = 2;

// Player Step Event

if (keyboard_check(vk_left)) {
    charspeed_x -= acceleration;
	image_xscale = -1;
}
if (keyboard_check(vk_right)) {
    charspeed_x += acceleration;
	image_xscale = 1;
}
if (keyboard_check(vk_up)) {
    charspeed_y -= acceleration;
    // sprite_index = player_back_spr; // Set appropriate sprite
}
if (keyboard_check(vk_down)) {
    charspeed_y += acceleration;
    //sprite_index = player_front_spr; // Set appropriate sprite
}


// Apply speed
if (speed > max_speed) {
    speed = max_speed;
}

// Clamps
x = clamp(x, 0, room_width);
y = clamp(y, 480, room_height);

// Collision handling
if (place_meeting(x, y, [brick_stack1_obj, brick_stack2_obj, brick_stack3_obj, container_tent_obj, grass1_obj, 
grass2_obj, red_circle_obj, small_street_plant1_obj, small_street_plant2_obj, street_bricks_obj, street_container_obj, 
street_device_obj, street_fixture1_obj, street_fixture2_obj, street_fixture3_obj, street_lamp_obj, street_light_obj, 
street_plant1_obj, street_plant2_obj, street_pole_obj, tent1_obj, tent2_obj, tent37_obj, water_pool1_obj, water_pool2_obj])) {
    
    charspeed_x = 0;
	charspeed_y = 0;
	var correction_amount = 5;
	
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

