class Slime {
  int x, y, health, sec;
  PImage slime;


  Slime() {
    health=400;
    x=50;
    y=height/2;
    imageMode(CENTER);
    slime = loadImage("slime1.png");
  }

  void display() {
    if (level==1 & frameCount>=30) {
      health=health-5;
      frameCount=0;
    } else if (level==2 & frameCount>=30) {
      health=health-5;
      frameCount=0;
    } else if (level==3 & frameCount>=30) {
      health=health-5;
      frameCount=0;
    } else if (level==4 & frameCount>=30) {
      health=health-10;
      frameCount=0;
    } else if (level==5 & frameCount>=30) {
      health=health-10;
      frameCount=0;
    }
    if (health>400) {
      health=400;
    }
    if (s1.x>=width-14) {
      s1.x=width-14;
    }
    if (s1.x<=22) {
      s1.x=22;
    }
    if (s1.y>=height-10) {
      s1.y=height-10;
    }
    if (s1.y<=77) {
      s1.y=77;
    }
    fill(#0F35FF);
    rect(200, 21, health, 18);
    imageMode(CENTER);
    slime.resize(128, 128);
    image(slime, x, y);
  }

  void move(char dir) {
    if (dir=='w') {
      y=y-15;
    } else if (dir=='a') {
      x=x-15;
    } else if (dir=='d') {
      x=x+15;
    } else if (dir=='s') {
      y=y+15;
    }
  }
}
