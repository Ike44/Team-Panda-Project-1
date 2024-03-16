/// @description Insert description here
// You can write your code in this editor

// Start animation on click
if (!animating && mouse_x >= 1000 && mouse_x <= 1005 + string_width("Credits") &&
    mouse_y >= y && mouse_y <= y + string_height("Credits") && mouse_check_button_pressed(mb_left)) {
    animating = true;
}

// Increment animation progress
if (animating) {
    animation_progress += 0.015;
    if (animation_progress >= 1) {
        animating = false; // Reset the flag
        animation_progress = 0; // Reset the progress
        room_goto(VictoryRoom); // Change the room after the animation finishes
    }
}



