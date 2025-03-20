/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 53C2E80A
/// @DnDArgument : "speed" "2"
speed = 2;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 13EF722D
/// @DnDArgument : "key" "vk_left"
/// @DnDArgument : "not" "1"
var l13EF722D_0;l13EF722D_0 = keyboard_check(vk_left);if (!l13EF722D_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 76462823
	/// @DnDParent : 13EF722D
	/// @DnDArgument : "key" "vk_right"
	/// @DnDArgument : "not" "1"
	var l76462823_0;l76462823_0 = keyboard_check(vk_right);if (!l76462823_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 379350F6
		/// @DnDParent : 76462823
		/// @DnDArgument : "key" "vk_up"
		/// @DnDArgument : "not" "1"
		var l379350F6_0;l379350F6_0 = keyboard_check(vk_up);if (!l379350F6_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 50EAC7B7
			/// @DnDParent : 379350F6
			/// @DnDArgument : "key" "vk_down"
			/// @DnDArgument : "not" "1"
			var l50EAC7B7_0;l50EAC7B7_0 = keyboard_check(vk_down);if (!l50EAC7B7_0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 3B704AA9
				/// @DnDParent : 50EAC7B7
				speed = 0;}}}}