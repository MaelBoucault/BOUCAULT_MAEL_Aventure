/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2C22A86C
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "isInvincible"
isInvincible = false;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 5877C307
/// @DnDApplyTo : {O_Character}
/// @DnDArgument : "speed" "0"
with(O_Character) image_speed = 0;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4DE053F0
/// @DnDApplyTo : {O_Character}
/// @DnDArgument : "spriteind" "S_Jimbo"
/// @DnDSaveInfo : "spriteind" "S_Jimbo"
with(O_Character) {
sprite_index = S_Jimbo;
image_index = 0;
}