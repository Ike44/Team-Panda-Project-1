/// @description Same as Start Except for Exit
// You can write your code in this editor

// Start animation on click
if (!animating && mouse_x >= 277 && mouse_x <= 277 + string_width("Exit") &&
    mouse_y >= y && mouse_y <= y + string_height("Exit") && mouse_check_button_pressed(mb_left)) {
    animating = true;
}

// Increment animation progress
if (animating) {
    animation_progress += 0.015;
    if (animation_progress >= 1) {
        animating = false; // Reset the flag
        animation_progress = 0; // Reset the progress
        room_goto(StartScreen); // Change the room after the animation finishes
    }
}


