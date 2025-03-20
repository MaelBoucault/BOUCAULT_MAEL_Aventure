/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 22817C66
/// @DnDArgument : "sprite" "S_Heart"
/// @DnDArgument : "number" "playerLife"
/// @DnDSaveInfo : "sprite" "S_Heart"
var l22817C66_0 = sprite_get_width(S_Heart);var l22817C66_1 = 0;for(var l22817C66_2 = playerLife; l22817C66_2 > 0; --l22817C66_2) {	draw_sprite(S_Heart, 0, 0 + l22817C66_1, 0);	l22817C66_1 += l22817C66_0;}