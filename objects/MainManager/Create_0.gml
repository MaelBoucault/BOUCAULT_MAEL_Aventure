

enum STATE { IDLE, WALK, CHASE, HIT, ATTACK };

enum TEAM {TEAM1, TEAM2};

globalvar debug;



debug = false;

if (!instance_exists(O_Inventaire_Manager)) var _inv = instance_create_layer(0,0,"Manager",O_Inventaire_Manager);
if (!instance_exists(O_MinimapManager)) var _MiniM = instance_create_layer(0,0,"Manager",O_MinimapManager);



