

InventoryOpen = false;

InteractRange = 100;

CanInteract = false;

globalvar Magasin;

Magasin = new storage(4,3,STORAGE_Types.MERCHENT);

var bracelet = new item()

with ( bracelet ) {
	
	name = "bracelet"
	icon = S_Bracelet;
	Object = undefined;
	
	type = ITEM_Types.OBJECT
	
	stack = false;
	
	cost = 100;
	
}


Magasin.items[0] = bracelet;

Magasin.quantity[0] = 50;                                                                                                            ent":{
    "name":"Objects",
    "path":"folders/Main/Objects.yy",
  },
  "parentObjectId":null,
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":true,
  "spriteId":{
    "name":"S_Collision",
    "path":"sprites/S_Collision/S_Collision.yy",
  },
  "spriteMaskId":null,
  "visible":false,
}