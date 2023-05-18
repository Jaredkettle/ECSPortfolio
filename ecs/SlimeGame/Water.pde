class Water {
  int x, y, x2, y2, d, d2;
  PImage water;


  Water() {
    x=int(random(30, width/2));
    y=200;
    d=1;
    d2=2;
    imageMode(CENTER);
    water = loadImage("water1.png");
  }

  void display(char dir) {
    if (dir=='w') {
      imageMode(CENTER);
      water.resize(128, 128);
      image(water, x, y);
    } else if (dir=='a') {
      imageMode(CENTER);
      water.resize(128, 128);
      image(water, x2, y2);
    }
  }

  void move(char dir) {
    if (dir=='w') {
      y=y+d;
    } else if (dir=='a') {
      y=y+d2;
    }

    if (y>=500) {
      x=int(random(30, width/2));
      y=0;
    } else if (distw<=34) {
      x=int(random(30, width/2));
      y=0;
      score=score+100;
    }
  }
}
