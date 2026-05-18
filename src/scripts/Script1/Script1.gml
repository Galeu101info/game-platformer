function Controls()
{
right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));

jump_key_pressed = keyboard_check_pressed(vk_space);
jump_key = keyboard_check(vk_space);

runKey = keyboard_check(vk_shift)
	runKey = clamp( runKey, 0, 1 );
}