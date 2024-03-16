/// @description Insert description here
// You can write your code in this editor

// Track player
var player = instance_nearest(x, y, player_obj);

if (instance_exists(player)) {
    var bullets = instance_create_layer(x, y, "instances_1", bossBullet_obj);
    bullets.direction = point_direction(x, y, player.x, player.y); // Point towards the player
    bullets.speed = 10; 
}

alarm[2] = 0.3 * room_speed;
