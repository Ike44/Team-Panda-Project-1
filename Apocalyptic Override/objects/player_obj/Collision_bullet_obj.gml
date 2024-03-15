/// @description Insert description here
// You can write your code in this editor
if (instance_exists(bullet_obj)) {
	alarm[0] = room_speed * 2;
}

// Decrease health when hit
if (currentHealth > 0) {
    currentHealth -= 1; // Player takes damage
    // Optionally, you can add a brief invincibility period here
}

// Check for death
if (currentHealth <= 0 && state != PlayerState.Dying) {
    isDead = true;
    state = PlayerState.Dying;
    sprite_index = player_death_spr;
    image_index = 0;
    image_speed = 0.1;
}


