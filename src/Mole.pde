// Ethan Reynolds

// Member variables
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
    mole = loadImage("FakeMole.png");
    play = true;
    i = 5;
  }
  
  void display() {
    imageMode(CENTER);
    image(mole, x, y, 90, 90);
  }

  void senseHit() {
  }

  void move() {
    randX = int(random(3));
    randY = int(random(3));

    if (randX == 0) {
      x = 150;
    } else if (randX == 1) {
      x = 350;
    } else {
      x = 550;
    }

    if (randY == 0) {
      y = 550;
    } else if (randX == 1) {
      y = 350;
    } else {
      y = 150;
    }
  }

  void miss() {
  }
}
