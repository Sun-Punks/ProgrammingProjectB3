class Mole {
  // Member variables
  int x, y, w, h, randX, randY, i, time;
  boolean hit, play;
  PImage mole;
  Timer timer;

  // Constructor
  Mole() {
    x = 0;
    y = 0;
    w = 0;
    h = 0;
    hit = false;
    mole = loadImage("FakeMole.png");
    randX = 0;
    play = true;
    i = 5;
    time = 100;
    timer = new Timer(time);
    timer.start();
  }

  // Member Methods
  void display() {
    popUp();
    imageMode(CENTER);
    image(mole, x, y, 75, 75);
  }

  void popUp() {
    color(255);
    if (timer.isFinished()) {
      randX = int(random(3));
      randY = int(random(3));
    }
    if (randX == 0) {
      x = 150;
    } else if (randX == 1) {
      x = 350;
    } else {
      x = 550;
    }
    noLoop();
    if (randY == 0) {
      y = 550;
    } else if (randX == 1) {
      y = 350;
    } else {
      y = 150;
    }
    noLoop();
  }

  void senseHit() {
  }

  void move() {
  }

  void miss() {
  }
}
