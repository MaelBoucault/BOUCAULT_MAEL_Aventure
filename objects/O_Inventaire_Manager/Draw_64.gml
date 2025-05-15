

if (InverntoryMode){
	//VAR
	var spr = S_Inv_Box;
	var offset = 48;
	var cs = sprite_get_width(S_Inv_1);
	var border = 12;
	
	// -- INVENTAIRE PRINCIPALE --
	var cx = Inventaire.inv_x;
	var cy = Inventaire.inv_y;
	
	var iw = (2 * offset) + (cx * (cs + border) ) - border; 
	var ih = (2 * offset) + (cy * (cs + border) ) - border + 50; 
	
	
	var invX = display_get_gui_width() - iw - 100 ;
	var invY = display_get_gui_height() - ih - 50;
	
	
	draw_inventory(Inventaire, invX, invY, iw, ih);
	
	var CoinX = invX+50
	
	var CoinY = invY+375;
	
	draw_sprite(S_Coin, 0, CoinX, CoinY);
	draw_text(CoinX + 75, CoinY + 75, string(nbCoin));
	
	
	// -- INVENTAIRE EQUIPEMENT --
	var ex = Equipement.inv_x;
	var ey = Equipement.inv_y;
	
	var ew = (2 * offset) + (ex * (cs + border) ) - border; 
	var eh = (2 * offset) + (ey * (cs + border) ) - border; 
	
	
	var equipX = invX- ew - border*2;
	
	
	draw_inventory(Equipement, equipX, invY, ew, eh);
	


	// --- DRAW ITEM SELECT ---
	
	if (cell_selected != -1) and (inv_selected != -1){
		var _item = inv_selected.items[cell_selected];
		var _icon = _item.icon;
		
		var mouseX = device_mouse_x_to_gui(0);
		var mouseY = device_mouse_y_to_gui(0);
		

		draw_sprite_ext(_icon, 0, mouseX + 32, mouseY + 32, .5, .5, 0, -1, 1);

		
	}
	if (OverlapTroupeItem){
		draw_text(device_mouse_x_to_gui(0) + offset + 40,device_mouse_y_to_gui(0) + offset - 20, "E");
		
	}
	if (OverlapItemMerch){
		draw_text(device_mouse_x_to_gui(0) + offset - 75,device_mouse_y_to_gui(0) + offset - 20, OverlapItemMerchCost);
	}


}//Fin du "if (InverntoryMode)" //