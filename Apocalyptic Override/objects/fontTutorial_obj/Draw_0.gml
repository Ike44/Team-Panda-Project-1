/// @description Insert description here
// You can write your code in this editor

// Draws 'Play' "Button"
draw_set_font(myFont);
var myColor = make_colour_rgb(128, 0, 32);
draw_set_colour(myColor);
draw_text(180, y, "Tutorial");
draw_set_colour(c_black);
draw_text(185, y, "Tutorial");

// Draw closing circle animation
if (animating) {
    var _radius = lerp(0, room_width + room_height, animation_progress); // Determine the radius based on progress
    draw_set_color(c_black);
    draw_circle(room_width / 2, room_height / 2, _radius, false); // Draws the circle
}



