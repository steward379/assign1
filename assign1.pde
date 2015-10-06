//Images declarings
PImage backgroundOne;
PImage backgroundTwo;
PImage enemyPlane;
PImage fighterPlane;
PImage healthPanel;
PImage treasureE;

// locations moves
int speedFly;
int speedPlaneFly;

// locations random
int popUpVerticalFighter = floor(random(30,420));
int popUpVerticalEnemy = floor(random(30,420));
int popUpHorizonTreasure = floor(random(100,500));
int popUpVerticalTreasure = floor(random(50,450));
int hpBar = floor(random(10,200));
  
void setup () {
  size(640,480);
  
  // Images loadings
  backgroundOne = loadImage("img/bg1.png");
  backgroundTwo = loadImage("img/bg2.png");
  enemyPlane = loadImage("img/enemy.png");
  fighterPlane = loadImage("img/fighter.png");
  healthPanel = loadImage("img/hp.png");
  treasureE = loadImage("img/treasure.png");
}

void draw() {
  
  // Repeat Backgrounds themselves 3 times in a row
  speedFly+=2;
  speedFly%=3200;
  image(backgroundTwo,speedFly,0);
  image(backgroundOne,speedFly-640,0);
  image(backgroundTwo,speedFly-1280,0);
  image(backgroundOne,speedFly-1920,0);
  image(backgroundTwo,speedFly-2560,0);
  image(backgroundOne,speedFly-3200,0);
  
  // setting planes' speed and scope, show up repeatedly
  speedPlaneFly+=3;
  speedPlaneFly%=650;
  
  //draw things and set their locations randomly
  image(enemyPlane,speedPlaneFly,popUpVerticalEnemy);
  image(fighterPlane,570,popUpVerticalFighter);
  image(treasureE,popUpHorizonTreasure,popUpVerticalTreasure);
  
  //draw hp bar and set the remaing hp randomly
  fill(#FF0000);
  rect(40,15,hpBar,30);
  image(healthPanel,30,15);  
}

/* this is the end of my codes.*/
