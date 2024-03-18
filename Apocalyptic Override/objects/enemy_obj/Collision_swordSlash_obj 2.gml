/// @description Insert description here
// You can write your code in this editor

instance_destroy();

// Check for collision with the enemy
if (instance_exists(other)) {
    other.state = EnemyState.Dying;
    other.sprite_index = enemy_death_spr; 
    other.image_index = 0;
    other.image_speed = 1;
}

audio_play_sound(damage_sound, 10, false);



