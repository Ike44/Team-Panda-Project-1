/// @description Insert description here
// You can write your code in this editor
if (instance_exists(bullet_obj)) {
	alarm[0] = room_speed * 2;
}

if (state != PlayerState.Dying) {
    state = PlayerState.Dying;
    sprite_index = player_death_spr;
    image_index = 0;
    image_speed = 1; 
}
