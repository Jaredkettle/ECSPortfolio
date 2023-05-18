class Fire {
  int x, y, d1, d2, dist;
  PImage fire, fireL, fireC;


  Fire() {
    x=int(random(750, 800));
    y=height+200;
    d1=1;
    d2=2;
    imageMode(CENTER);
    fire = loadImage("fireball1.png");
    fireL= loadImage("fireballL.png");
    fireC= loadImage("fireballC.png");
  }

  void display(char dir) {
    if (dir=='w') {
      dist=int(dist(x, y, s1.x, s1.y));
      imageMode(CENTER);
      fire.resize(128, 128);
      image(fire, x, y);
    } else if (dir=='a') {
      dist=int(dist(x, y, s1.x, s1.y));
      imageMode(CENTER);
      fireL.resize(128, 128);
      image(fireL, x, y);
    } else if (dir=='s') {
      dist=int(dist(x, y, s1.x, s1.y));
      imageMode(CENTER);
      fireC.resize(128, 128);
      image(fireC, x, y);
    }
  }


  void move(char dir) {
    if (dir=='w') {
      y=y+d1;
      x=x-d2;
    } else if (dir=='a') {
      y=y+d1;
      x=x+d2;
    } else if (dir=='s') {
      y=y+d1;
      x=x-d2;
    }
    if (x<=0 & dir=='w') {
      d1=0;
      d2=0;
      d1=int(random(3, 5));
      d2=int(random(3, 5));
      y=0;
      x=int(random(550, 800));
    } else if (y>=500 & dir=='w') {
      d1=0;
      d2=0;
      d1=int(random(3, 5));
      d2=int(random(3, 5));
      y=0;
      x=int(random(550, 800));
    } else if (dist<=38 & dir=='w') {
      d1=0;
      d2=0;
      d1=int(random(3, 5));
      d2=int(random(3, 5));
      y=0;
      x=int(random(550, 800));
      s1.health=s1.health-100;
    }
    if (x>=width & dir=='a') {
      d1=0;
      d2=0;
      d1=int(random(3, 5));
      d2=int(random(3, 5));
      y=0;
      x=int(random(0, 300));
    } else if (y>=500 & dir=='a') {
      d1=0;
      d2=0;
      d1=int(random(3, 5));
      d2=int(random(3, 5));
      y=0;
      x=int(random(0, 300));
    } else if (dist<=38 & dir=='a') {
      d1=0;
      d2=0;
      d1=int(random(3, 5));
      d2=int(random(3, 5));
      y=0;
      x=int(random(0, 300));
      s1.health=s1.health-100;
    }
    if (x<=0 & dir=='s') {
      d1=0;
      d2=0;
      d1=int(random( 3, 4));
      d2=int(random(-2, 2));
      y=0;
      x=int(random(0, width));
    } else if (y>=500 & dir=='s') {
      d1=0;
      d2=0;
      d1=int(random( 3, 4));
      d2=int(random(-2, 2));
      y=0;
      x=int(random(0, width));
    } else if (dist<=38 & dir=='s') {
      d1=0;
      d2=0;
      d1=int(random( 3, 4));
      d2=int(random(-2, 2));
      y=0;
      x=int(random(0, width));
      s1.health=s1.health-100;
    }
  }
}
