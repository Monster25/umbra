//Input from player
key_up = -keyboard_check(ord('W')) //Up
key_down = keyboard_check(ord('S')) //Down
key_left = -keyboard_check(ord('A')) //Left
key_right = keyboard_check(ord('D')) //Right

lclick = mouse_check_button(mb_left); //Left Click
ctrl = keyboard_check(vk_control); //Ctrl
v = keyboard_check(ord('V')) //V
space = keyboard_check_pressed(vk_space); //space

scroll_up = mouse_wheel_up(); //scroll up
scroll_down = mouse_wheel_down(); //scroll down


