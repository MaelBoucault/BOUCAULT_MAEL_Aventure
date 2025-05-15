

globalvar InverntoryMode, 
		  Inventaire, Equipement,
		  inv_selected, cell_selected,
		  OverlapTroupeItem,
		  nbCoin,
		  OverlapItemMerch,
		  OverlapItemMerchCost
		  ;

nbCoin = 1000;
		  
inv_selected = -1;
cell_selected = -1;

InverntoryMode = false;
OverlapTroupeItem = false;
OverlapItemMerch = false;
OverlapItemMerchCost = 0;

Inventaire = new storage(4,3,STORAGE_Types.PLAYER);
Equipement = new storage(1,3,STORAGE_Types.EQUIP);


var axe = new item()
var Troupe = new item()

inventaire = undefined;


with ( axe ) {
	
	name = "axe"
	icon = S_Axe;
	hand_sprite = S_Axe;
	Object = undefined;
	
	type = ITEM_Types.OBJECT;
	
	stack = false;
	
	cost = 100;
	
}


with ( Troupe ) {
	name = "Troupe"
	icon = S_TroupeInventaire;
	hand_sprite = undefined;
	Object = O_TroupeBase;
	
	type = ITEM_Types.TROUPE
	
	stack = true;
}



Inventaire.items[1] = axe;
Inventaire.items[2] = Troupe;


Inventaire.quantity[2] = 50;







