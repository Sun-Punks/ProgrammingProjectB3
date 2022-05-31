// Ethan Reynolds

// Member variables
class Mole {
  int x, y, w, h, randX, randY;
  boolean hit, play;
  PImage mole;

  // Constructor
  Mole() {
    x = 350;
    y = 350;
    w = 0;
    h = 0;
    hit = false;
    mole = loadImage("mole.png");
    play = true;
    //i = 5;
  }

  void display() {
    imageMode(CENTER);
    image(mole, x, y, 90, 90);
  }

  boolean senseHit(Hammer h) {
    float distance = dist(x, y, h.x, h.y);
    if (distance < 100) {
      return true;
    } else {
      return false;
    }
  }


  void move() {
    randX = int(random(3));
    randY = int(random(3));

    if (randX == 0) {
      x = 130;
    } else if (randX == 1) {
      x = 330;
    } else {
      x = 530;
    }

    if (randY == 0) {
      y = 500;
    } else if (randX == 1) {
      y = 310;
    } else {
      y = 100;
    }
  }

  void miss() {
  }
}
