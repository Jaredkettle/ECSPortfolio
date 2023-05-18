// Jared Kettle | 18/04/2023 | Ethch-A-Sketch

int x, y;
PImage pic;

void setup() {
  size (800, 658);
  x = width/2;
  y=height/2;
  pic = loadImage("Etch.png");
  background(#0056FC);
}

void draw() {
  image(pic, 0, 0);
  strokeWeight(3);
}

void mousePressed() {
  saveFrame("line-######.png");
}

void keyPressed()
{
  if (keyPressed) {
    if (key == 'w' || key=='W') {
      moveUp(5);
    } else if (key == 's' || key=='S') {
      moveDown(5);
    } else  if (key == 'a' || key=='A') {
      moveLeft(5);
    } else if (key == 'd' || key=='D') {
      moveRight(5);
    } else if (key == 'p' || key=='P') {
      background(#0056FC);
      x=width/2;
      y=height/2;
    }
  }
}

void moveRight(int rep) {
  for (int i=0; i<rep; i=i+1) {
    point(x+i, y);
  }
  x = x + rep;
}

void moveLeft(int rep) {
  for (int i=0; i<rep; i=i+1) {
    point(x-i, y);
  }
  x = x - rep;
}

void moveUp(int rep) {
  for (int i=0; i<rep; i=i+1) {
    point(x, y-i);
  }
  y = y - rep;
}


void moveDown(int rep) {
  for (int i=0; i<rep; i=i+1) {
    point(x, y+i);
  }
  y = y + rep;
}
