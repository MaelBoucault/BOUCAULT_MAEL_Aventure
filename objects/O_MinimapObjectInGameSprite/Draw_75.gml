/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F4C48D7
/// @DnDArgument : "var" "global.showMap"
/// @DnDArgument : "value" "true"
if(global.showMap == true){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5D39E121
	/// @DnDParent : 3F4C48D7
	/// @DnDArgument : "x" "x/32*8"
	/// @DnDArgument : "y" "y/32*8"
	/// @DnDArgument : "sprite" "minimapSprite"
	draw_sprite(minimapSprite, 0, x/32*8, y/32*8);}