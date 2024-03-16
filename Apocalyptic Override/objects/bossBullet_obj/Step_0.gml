/// @description Insert description here
// You can write your code in this editor
speed = 10;
direction = 180;

if (instance_exists(player_obj)) {
    direction = point_direction(x, y, player_obj.x, player_obj.y);
}

// Move the bullet forward in the new direction
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);