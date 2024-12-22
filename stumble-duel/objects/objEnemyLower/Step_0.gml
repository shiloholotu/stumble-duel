
x = objEnemyUpper.x;

if(abs(objEnemyUpper.dir) > .1) sprite_index = run;
else sprite_index = idle;

y += fall;

if(fall >= 1) fall += .5;