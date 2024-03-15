/// @description Insert description here
// You can write your code in this editor

// Draws 'Yes' "Button"
draw_set_font(myFont)
var myColor = make_colour_rgb(128, 0, 32);
draw_set_colour(myColor);
draw_text(100, 265, "Yes");
draw_set_colour(c_red);
draw_text(103, 265, "Yes");

// Draw closing circle animation
if (animating) {
    var _radius = lerp(0, room_width + room_height, animation_progress); // Determine the radius based on progress
    draw_set_color(c_white);
    draw_circle(room_width / 2, room_height / 2, _radius, false); // Draws the circle
}





