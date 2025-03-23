
enum REGIMENT_STATE {IDLE, WALK, CHASE}

enum TROUPE_STATE {IDLE, HIT}

globalvar debug;

debug = false;

if (!instance_exists(O_Inventaire_Manager)) var _inv = instance_create_layer(0,0,"Manager",O_Inventaire_Manager)
if (!instance_exists(O_MinimapManager)) var _MiniM = instance_create_layer(0,0,"Manager",O_MinimapManager)



