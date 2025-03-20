/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 121EDD56
/// @DnDComment : 
/// @DnDArgument : "funcName" "sc_ReduceLife"
/// @DnDArgument : "arg" "amount=1"
function sc_ReduceLife(amount=1) {	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0003D0A1
	/// @DnDParent : 121EDD56
	/// @DnDArgument : "var" "O_LifeManager.isInvincible"
	/// @DnDArgument : "value" "false"
	if(O_LifeManager.isInvincible == false){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1F2AD55A
		/// @DnDInput : 2
		/// @DnDParent : 0003D0A1
		/// @DnDArgument : "expr" "-amount"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "O_LifeManager.playerLife"
		/// @DnDArgument : "var_1" "O_LifeManager.isInvincible"
		O_LifeManager.playerLife += -amount;
		O_LifeManager.isInvincible = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 57D7B0C6
		/// @DnDApplyTo : {O_LifeManager}
		/// @DnDParent : 0003D0A1
		with(O_LifeManager) {
		alarm_set(0, 30);
		
		}
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 0D194EA0
		/// @DnDApplyTo : {O_Character}
		/// @DnDParent : 0003D0A1
		/// @DnDArgument : "speed" ".5"
		with(O_Character) image_speed = .5;}}