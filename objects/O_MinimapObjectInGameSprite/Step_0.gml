/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7FF6CE16
/// @DnDArgument : "var" "parentInGame"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "-4"
if(!(parentInGame == -4)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56D6F75C
	/// @DnDInput : 4
	/// @DnDParent : 7FF6CE16
	/// @DnDArgument : "expr" "parentInGame.x"
	/// @DnDArgument : "expr_1" "parentInGame.y"
	/// @DnDArgument : "expr_2" "parentInGame.image_xscale"
	/// @DnDArgument : "expr_3" "parentInGame.image_yscale"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	/// @DnDArgument : "var_2" "image_xscale"
	/// @DnDArgument : "var_3" "image_yscale"
	x = parentInGame.x;
	y = parentInGame.y;
	image_xscale = parentInGame.image_xscale;
	image_yscale = parentInGame.image_yscale;}