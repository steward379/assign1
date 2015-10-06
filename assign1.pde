//Images declarings
PImage bgOne;
PImage bgTwo;
PImage enemyLeft;
PImage fighterFly;
PImage healthFrame;
PImage treasureE;

// locations moves
int scrollRight;
int enemyFly;

// locations random, setting clearzone
int fighterY = floor(random(50,420));
int enemyY = floor(random(50,420));
int treasureY = floor(random(50,420));
int treasureX = floor(random(100,500));
int hpBar = floor(random(10,200));
  
void setup () {
  size(640,480);
  
  // Images loadings
  bgOne = loadImage("img/bg1.png");
  bgTwo = loadImage("img/bg2.png");
  enemyLeft = loadImage("img/enemy.png");
  fighterFly = loadImage("img/fighter.png");
  healthFrame = loadImage("img/hp.png");
  treasureE = loadImage("img/treasure.png");
}

void draw() {
  
  // infinite!! ya!
  scrollRight+=2;
  scrollRight%=1280;
  image(bgTwo,scrollRight,0);
  image(bgOne,scrollRight-640,0);
  image(bgTwo,scrollRight-1280,0);
  
  // setting planes' speed and scope, show up repeatedly
  enemyFly+=3;
  enemyFly%=640;
  
  //draw things and set their locations randomly
  image(enemyLeft,enemyFly,enemyY);
  image(fighterFly,570,fighterY);
  image(treasureE,treasureX,treasureY);
  
  //draw hp bar and set the remaing hp randomly
  fill(#FF0000);
  rect(40,15,hpBar,30);
  image(healthFrame,30,15);  
}

/* this is the end of my code.*/
