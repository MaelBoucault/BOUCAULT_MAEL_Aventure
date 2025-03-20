/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 643F78AE
/// @DnDComment : 
/// @DnDInput : 2
/// @DnDArgument : "funcName" "Scr_CreateMinimapObject"
/// @DnDArgument : "arg" "parentObject"
/// @DnDArgument : "arg_1" "myColor"
function Scr_CreateMinimapObject(parentObject, myColor) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0ED7C118
	/// @DnDParent : 643F78AE
	/// @DnDArgument : "var" "justCreatedObject"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "O_MinimapObjectInGame"
	/// @DnDArgument : "layer" ""minimapsObject""
	/// @DnDSaveInfo : "objectid" "O_MinimapObjectInGame"
	var justCreatedObject = instance_create_layer(0, 0, "minimapsObject", O_MinimapObjectInGame);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09F859A0
	/// @DnDParent : 643F78AE
	/// @DnDArgument : "expr" "parentObject"
	/// @DnDArgument : "var" "justCreatedObject.parentInGame"
	justCreatedObject.parentInGame = parentObject;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 441E8EA8
	/// @DnDParent : 643F78AE
	/// @DnDArgument : "expr" "myColor"
	/// @DnDArgument : "var" "justCreatedObject.minimapColor"
	justCreatedObject.minimapColor = myColor;}