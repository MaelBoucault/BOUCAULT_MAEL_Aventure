
globalvar InverntoryMode, 
		  Inventaire, Equipement,
		  inv_selected, cell_selected,
		  OverlapTroupeItem
		  ;
		  
inv_selected = -1;
cell_selected = -1;

InverntoryMode = false;
OverlapTroupeItem = false;

Inventaire = new storage(5,3);
Equipement = new storage(1,3);


var bracelet = new item()
var axe = new item()
var Troupe = new item()

with ( bracelet ) {
	name = "bracelet sacré"
	icon = S_Bracelet;
	hand_sprite = S_Bracelet;
	Object = undefined;
	
	type = ITEM_Types.OBJECT
	
	stack = false;
}
with ( axe ) {
	name = "axe"
	icon = S_Axe;
	hand_sprite = S_Axe;
	Object = undefined;
	
	type = ITEM_Types.OBJECT;
	
	stack = false;
}
with ( Troupe ) {
	name = "Troupe"
	icon = S_TroupeInventaire;
	hand_sprite = undefined;
	Object = O_TroupeBase;
	
	type = ITEM_Types.TROUPE
	
	stack = true;
}

Inventaire.items[0] = bracelet;
Inventaire.items[1] = axe;
Inventaire.items[2] = Troupe;


Inventaire.quantity[2] = 50000;
