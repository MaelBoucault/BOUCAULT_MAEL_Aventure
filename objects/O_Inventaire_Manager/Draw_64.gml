

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
	var ih = (2 * offset) + (cy * (cs + border) ) - border; 
	
	
	var invX = display_get_gui_width() - iw - 100 ;
	var invY = display_get_gui_height() - ih - 50;
	
	
	draw_inventory(Inventaire, invX, invY, iw, ih);
	
	// -- INVENTAIRE EQUIPEMENT --
	var ex = Equipement.inv_x;
	var ey = Equipement.inv_y;
	
	var ew = (2 * offset) + (ex * (cs + border) ) - border; 
	var eh = (2 * offset) + (ey * (cs + border) ) - border; 
	
	
	var ekX = invX- ew - border*2;
	
	
	draw_inventory(Equipement, ekX, invY, ew, eh);


	// --- DRAW ITEM SELECT ---
	
	if (cell_selected != -1) and (inv_selected != -1){
		var _item = inv_selected.items[cell_selected];
		var _icon = _item.icon;
		
		var mouseX = device_mouse_x_to_gui(0);
		var mouseY = device_mouse_y_to_gui(0);
		
		draw_sprite_ext(_icon, 0, mouseX + 32, mouseY + 32, .5, .5, 0, -1, 1)
	}
	if (OverlapTroupeItem){
		draw_text(device_mouse_x_to_gui(0) + offset - 20,device_mouse_y_to_gui(0) + offset - 20, "E");
		
	}


}//Fin if (InverntoryMode) //