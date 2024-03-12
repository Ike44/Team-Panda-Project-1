/// @description Same as Start Except for Exit
// You can write your code in this editor


// Draws 'Exit' "Button"
draw_set_font(myFont);
draw_set_colour(c_black);
draw_text(277, 265, "Exit");
draw_set_colour(c_white);
draw_text(280, 265, "Exit");

// Draw closing circle animation
if (animating) {
    var _radius = lerp(0, room_width + room_height, animation_progress); // Determine the radius based on progress
    draw_set_color(c_black);
    draw_circle(room_width / 2, room_height / 2, _radius, false); // Draws the circle
}



