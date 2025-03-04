/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1E12803E
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "Script1"
/// @DnDArgument : "arg" "amount"
function Script1(amount) {	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0033F25F
	/// @DnDParent : 1E12803E
	if(variable == 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3761F243
		/// @DnDParent : 0033F25F
		/// @DnDArgument : "expr" "-amount"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "O_Manager.Player_Hp"
		O_Manager.Player_Hp += -amount;}}