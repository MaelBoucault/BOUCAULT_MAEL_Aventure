/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 121EDD56
/// @DnDComment : 
/// @DnDArgument : "funcName" "sc_Heal"
/// @DnDArgument : "arg" "amount"
function sc_Heal(amount) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F2AD55A
	/// @DnDInput : 2
	/// @DnDParent : 121EDD56
	/// @DnDArgument : "expr" "amount"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "O_LifeManager.playerLife"
	/// @DnDArgument : "var_1" "O_LifeManager.isInvincible"
	O_LifeManager.playerLife += amount;
	O_LifeManager.isInvincible = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 57D7B0C6
	/// @DnDApplyTo : {O_LifeManager}
	/// @DnDParent : 121EDD56
	with(O_LifeManager) {
	alarm_set(0, 30);
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 41AFA0B2
	/// @DnDApplyTo : {O_Character}
	/// @DnDParent : 121EDD56
	/// @DnDArgument : "spriteind" "S_Jimbo_Heal"
	/// @DnDSaveInfo : "spriteind" "S_Jimbo_Heal"
	with(O_Character) {
	sprite_index = S_Jimbo_Heal;
	image_index = 0;
	}

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0D194EA0
	/// @DnDApplyTo : {O_Character}
	/// @DnDParent : 121EDD56
	/// @DnDArgument : "speed" ".5"
	with(O_Character) image_speed = .5;}