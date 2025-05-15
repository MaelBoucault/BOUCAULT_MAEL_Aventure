enum ITEM_Types {OBJECT, TROUPE, COIN}

enum STORAGE_Types {PLAYER,EQUIP,MERCHENT}

function item() constructor {
	
	name = "";
	
	icon = undefined;
	
	Object = undefined;
	
	type = undefined
	
	stack = true;
	
	cost = 0;
	
}


function storage(X,Y, storageType) constructor {
	
	inv_x = X;
	
	inv_y = Y;
	
	items = array_create(inv_x * inv_y, -1);
	
	quantity = array_create(inv_x * inv_y, 0);
	
	type = storageType;
	
}


function check_mouse_gui(x1,y1,x2,y2){
	var mouseX = device_mouse_x_to_gui(0);
	var mouseY = device_mouse_y_to_gui(0);
	
	if (mouseX >= x1) and (mouseX <= x2) and (mouseY >= y1) and (mouseY <= y2) {
		return true;	
	} else {
		return false;
	}
}

function exchange_items(inventoryFrom, cellFrom, inventoryTo, cellTo){
	//VAR COURTE
	var invTo = inventoryTo;
	var invFrom = inventoryFrom;
	var clTo = cellTo;
	var clFrom = cellFrom;
	
	//ToKKAGE
	var copyTo = json_parse(json_stringify(invTo))
	var copyFrom = json_parse(json_stringify(invFrom))
	
	// --- INVERS ---
	invTo.items[clTo] = copyFrom.items[clFrom];
	invTo.quantity[clTo] = copyFrom.quantity[clFrom];
	
	invFrom.items[clFrom] = copyTo.items[clTo];
	invFrom.quantity[clFrom] = copyTo.quantity[clTo];
}

function draw_inventory(inv, posX, posY, width, height){
	var spr = S_Inv_Box;
	var offset = 48;
	var cs = sprite_get_width(S_Inv_1);
	var border = 12;
	
	var _inv = inv;
	var _itx = posX;
	var _ity = posY;
	var _itw = width;
	var _ith = height;
	
	// -- Celle --
	var cx1 = _itx + offset;
	var cy1 = _ity + offset;
	
	var items = inv.items;
	var quantity = inv.quantity;
	
	var leftClick = mouse_check_button_pressed(mb_left);
	
	
	// -- Draw -- \\
	
	draw_sprite_stretched(spr, 0, _itx,_ity, _itw,_ith);
	
	
	

	// -- for Cells
	for (var i = 0; i < array_length(items); i++){
		// -- Celle Loc -- 
		
		var line = i div _inv.inv_x;
		var xx = cx1 + i *(cs + border) - (line * _inv.inv_x * (cs + border));
		var yy = cy1 + line *(cs + border) ;
		
		// -- Celle info --
		var _item = items[i];
		
		
								// -----  LOGISTIQUE  -----//					
		// -- Mouse -- //
		var mouseIn = check_mouse_gui(xx, yy, xx + cs, yy + cs);
		
		if (_item != -1){
			if (inv == Equipement) and (_item.type == ITEM_Types.TROUPE){
			
				if (keyboard_check_pressed(ord("E"))){
					if(SpawnTroupe(_item, O_Regiment)){
						inv.quantity[i] -= 1;
						show_debug_message("Spawn une Troupe")
					}
				}
			}
		}

		if (mouseIn){
			
			OverlapTroupeItem = false;
			OverlapItemMerch = false;
			
			if (_item != -1){
				if (_item.type == ITEM_Types.TROUPE) {

					OverlapTroupeItem = true;
					
					if (keyboard_check_pressed(ord("E"))){
						if(SpawnTroupe(_item, O_Regiment)){
							inv.quantity[i] -= 1;
						}
					}
				}else OverlapTroupeItem = false;
				
				if (inv.type = STORAGE_Types.MERCHENT){
					
					OverlapItemMerch = true;
					OverlapItemMerchCost = _item.cost;
					
					
				}
				
				if(leftClick){
					
					leftClick = false;
					if ( (inv.type = STORAGE_Types.MERCHENT) and (_item.cost <= nbCoin) )  or (inv.type != STORAGE_Types.MERCHENT) {
						

						if (cell_selected == -1) {
							
							
							cell_selected = i;
							inv_selected = inv;
							
							if (inv.type = STORAGE_Types.MERCHENT){
								
								nbCoin -= _item.cost
								
							}
							
						
						}else {
							if !(inv.type = STORAGE_Types.MERCHENT){
								var itemSelected = inv_selected.items[cell_selected];
								var nameSelected = itemSelected.name;
								var qttSelected = inv_selected.quantity[cell_selected];
						
								var nameTarget = _item.name;
						
								if (nameTarget == nameSelected) and (_item.stack) and (!(inv_selected == inv) and (cell_selected == i)) { // --INCREMENTE
									quantity[i] += qttSelected;
									inv_selected.items[cell_selected] = -1;
									inv_selected.quantity[cell_selected] = 0;
								}
								else { // --- ECHANGE ITEMS -- //
									exchange_items(inv_selected, cell_selected, inv, i);
								}
								cell_selected = -1;
								inv_selected = -1;
							}
						}
					}
				}
				
			} else {
				if !(inv.type = STORAGE_Types.MERCHENT){
					if ( cell_selected != -1) { // ITEM SELECT
						if (leftClick){ // Déplace Item
							leftClick = false;
							// CREER ITEM
								items[i] = inv_selected.items[cell_selected];
								quantity[i] = inv_selected.quantity[cell_selected];
								// -- SUPRIME ITEM OREGINE
								inv_selected.items[cell_selected] = -1;
								inv_selected.quantity[cell_selected] = 0;
								// RESET VARS
								cell_selected = -1;
								inv_selected = -1;
						}
					}
				}
			}
		}
		

		
									// ----- DRAW ----- //
				
		var sub = 0;
		if (_item == -1){
			if ( mouseIn ) and (cell_selected != -1){
				sub = 1;
			}else {
				sub = 2;
			}
		}else if (mouseIn) sub = 1;
		
		// -- Draw Cell sprite
		draw_sprite(S_Inv_1, sub, xx, yy);
		
		// -- Draw Item Icon -- 
		var a = 1;
		if ( _item != -1){
			if (cell_selected == i) and (inv_selected == inv) a = .5;
			else a = 1;
			draw_sprite_ext(_item.icon, 0, xx + cs /2, yy + cs /2, .5, .5, 0, -1, a);
			// Quantity
			if (_item.stack){
				draw_set_color(c_white);
				draw_set_halign(fa_right);
				draw_set_valign(fa_bottom);
				draw_set_font(MainFont);
				
				offset = cs * 9/10;
				
				draw_text(xx + offset, yy + offset, quantity[i]);
			}
		}
		
		if (inv.type = STORAGE_Types.MERCHENT){
		
			for (var j = 0; j < array_length(items); j++){
			
				//draw_text(cx1 + offset, cy1 + offset, string(items[j].cost));
			
			}
		
		}
		
	} // ---FIN FOR

}


function AddItem(itemAdd, TargetInventory ){
	
	var _item = itemAdd;
	var invT = TargetInventory;
	var items = invT.items;
	var qtt = invT.quantity;
	
	var stack = _item.stack;
	var size = array_length(items)
	if ( _item.type ==  ITEM_Types.TROUPE ) and (invT == Equipement) {
		return false
	}
	// IS Stackable??
	if (stack){
		var name = _item.name;
		
		for ( var i = 0; i< size; i++) { // --- PARCOUORE INV
			var it = items[i];
			
			if (it != -1) { // --- Un Item est présent
				if (it.name == name){ // --- Item est le même
					qtt[i] ++;
					verifItems()
					return true;
				}
			}
		}
	}
	for ( var i = 0; i< size; i++) {
		// CASE EST LIBRE
		if ( items[i] == -1) {
			items[i] = _item;
			qtt[i] = 1;
			verifItems()
			return true;
		}
	}
	
	verifItems()
	return false;

}
	
function SpawnTroupe(TroupeToSpawn, Target) {
    var _item = TroupeToSpawn;
    _item.target = Target;
	
    // Vérification du type de l'élément
    if (_item.type != ITEM_Types.TROUPE) return false; // Ajout du point-virgule pour la fin de la ligne

    // Création de l'instance du spawner à la position de O_Bjorn
    var spawnTroupe = instance_create_layer(O_Bjorn.x, O_Bjorn.y, "Inventaire", O_Regiment);

    // Vérification si l'instance a bien été créée et si on peut utiliser SetTroupe
    if (spawnTroupe != undefined && instance_exists(spawnTroupe)) {
        SetTroupe(_item.Object, spawnTroupe);
    }

    return true;
}

function SetTroupe(Troupe, spawner) {
    // Assigner l'objet Troupe à la variable O_troupe dans spawner
    spawner.O_troupe = Troupe;
}

function verifItems(){
	for (var i = 0; i < array_length(Equipement.items); i++){;
		
		if (Equipement.items.icon == S_Bracelet){
			hpMax = 200;
		}
	}
}