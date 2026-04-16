// Window Resize Event
var target_aspect = 16/9; // Your desired aspect ratio

var new_width = window_get_width();
var new_height = window_get_height();

// Calculate what the height should be based on the new width
var calculated_height = new_width / target_aspect;

// If the calculated height doesn't match, adjust the window
if (new_height != calculated_height) {
    window_set_size(new_width, round(calculated_height));
}