/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 22361A70
/// @DnDArgument : "sprite" "S_Coeur"
/// @DnDArgument : "number" "Player_Hp"
/// @DnDSaveInfo : "sprite" "S_Coeur"
var l22361A70_0 = sprite_get_width(S_Coeur);var l22361A70_1 = 0;for(var l22361A70_2 = Player_Hp; l22361A70_2 > 0; --l22361A70_2) {	draw_sprite(S_Coeur, 0, 0 + l22361A70_1, 0);	l22361A70_1 += l22361A70_0;}