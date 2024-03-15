/// @description Same as Play but for Tutorial Page
// You can write your code in this editor

// Draws "Tutorial" 
draw_set_font(myFont);
draw_set_colour(c_black);
draw_text(205, 10, "Tutorial");
draw_set_colour(c_white);
draw_text(210, 10, "Tutorial");

myFont2 = subHeadingFont;
draw_set_font(myFont2);

draw_set_colour(c_black);
draw_text(35, 75, "It has been 100 years since AI has taken over...");
draw_set_colour(c_white);
draw_text(40, 75, "It has been 100 years since AI has taken over...");

draw_set_colour(c_black);
draw_text(5,105, "As the last hero, you are the only hope we have left");
draw_set_colour(c_white);
draw_text(10, 105, "As the last hero, you are the only hope we have left");

draw_set_colour(c_black);
draw_text(15, 135, "Use (WASD) to explore what remains of the world");
draw_set_colour(c_white);
draw_text(20, 135, "Use (WASD) to explore what remains of the world");

draw_set_colour(c_black);
draw_text(20, 165, "Press (Space) to attack and defeat the enemies");
draw_set_colour(c_white);
draw_text(25, 165, "Press (Space) to attack and defeat the enemies");

draw_set_colour(c_black);
draw_text(5, 195, "Dodge the enemies' attacks and beat the final boss!");
draw_set_colour(c_white);
draw_text(10, 195, "Dodge the enemies' attacks and beat the final boss!");

draw_set_colour(c_black);
draw_text(15, 225, "Press (r) to restart the game and (g) for the room");
draw_set_colour(c_white);
draw_text(20, 225, "Press (r) to restart the game and (g) for the room");
