/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter) || gamepad_button_check_released(0, gp_start)) {
	game_restart();
}

if(keyboard_check_pressed(vk_escape))
	game_end();
