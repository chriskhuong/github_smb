///Initialize

event_inherited();  //allows the object to inherit the create event of the parent
//image_speed = .5;
//hp = 50;

tag = "boss";

maxHp = 50;
hp = maxHp;
image_speed = .5;


enum jerry{
	asleep,
	idle,
	earthquake,
	fireball,
	firespin,
	pounce,
	bombspit
}

invincible = false;

startingState = jerry.asleep;
state = startingState;
image_index = 0;

z = 0;
zSpeed = 0;
grav = .25;
//state = scr_boss_Jerry_idleState