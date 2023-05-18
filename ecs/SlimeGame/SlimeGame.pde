// Jared Kettle | 4/25/2023 | LegendsOfSlime
boolean play;
int score, level, sec, distf, distw;
Slime s1;
Water w1, w2;
Fire f1, f2, f3, f4, f5;

void setup() {
  s1=new Slime();
  w1=new Water();
  f1=new Fire();
  f2=new Fire();
  f3=new Fire();
  f4=new Fire();
  f5=new Fire();
  score=0;
  level=1;
  distf=0;
  play= false;
  size(800, 500);
}

void draw() {
  if (play==false) {
    startScreen();
  } else {
    distf=int(dist(s1.x, s1.y, f1.x, f1.y));
    distw=int(dist(s1.x, s1.y, w1.x+6, w1.y));
    println(distw);
    if (distf<=38) {
    }
    if (distw<=34) {
      s1.health=s1.health+50;
    }

    drawBackground();
    infoPanel();
    s1.display();
    f1.display('w');
    w1.display('w');
    if (level==1) {
      f1.move('w');
      w1.move('w');
    } else if (level==2) {
      f2.display('a');
      f2.move('a');
      f1.move('w');
      w1.move('w');
    } else if (level==3) {
      f2.display('a');
      f2.move('a');
      f1.move('w');
      w1.move('a');
    } else if (level==4) {
      f2.display('a');
      f3.display('s');
      f2.move('a');
      f3.move('s');
      f1.move('w');
      w1.move('a');
    } else if (level==5) {
      f3.display('s');
      f4.display('s');
      f2.display('a');
      f2.move('a');
      f3.move('s');
      f1.move('w');
      w1.move('a');
      f4.move('s');
    }
    f1.display('w');
    score=score+1;
    if (score>=2500 & score<5000) {
      level=2;
    } else if (score>=5000 & score<7500) {
      level=3;
    } else if (score>=7500 & score<10000) {
      level=4;
    } else if (score>=10000) {
      level=5;
    }
    if (score>=20000) {
      f5.display('s');
      f5.move('s');
    }


    if (s1.health<=0) {
      gameOver();
    }
  }
}

void keyPressed() {

  if (key=='w' | key=='W' ) {
    s1.move('w');
  } else if (key=='a' | key=='A' ) {
    s1.move('a');
  } else if (key=='s' | key=='S' ) {
    s1.move('s');
  } else if (key=='D' | key=='d' ) {
    s1.move('d');
  } else if (key==' ' ) {
    play=true;
  }
}

void drawBackground() {
  background(#FFA064);
}

void startScreen() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("LegendsOfSlime", width/2, 150);
  text("by Jared Kettle", width/2, 190);
  text("WASD to control", width/2, 230);
  text("Press the spacebar to start", width/2, 270);
}

void gameOver() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Game Over", width/2, 150);
  text("Score:" + score, width/2, 190);
  text("You reached level:" + level, width/2, 230);
  noLoop();
}


void infoPanel() {
  fill(255, 128);
  textSize(20);
  textAlign(CENTER);
  rect(0, 0, width, 50);
  fill(0);
  text("Score: " + score, 50, 30);
  textSize(15);
  text("Thirst", width/2, 15);
  textSize(20);
  text("Level:" + level, 700, 30);
  rect(200, 20, width/2, 20);
}
