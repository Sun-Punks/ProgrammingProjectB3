//class PowerUps extends Timer{
  class PowerUps{
  // Member variables
  int x, y, w, h, randX, randY;
  boolean hit;
  PImage frenzy, timerFreeze, doublePoints;

  // Constructor
  PowerUps() {
    x = 0;
    y = 0;
    w = 0;
    h = 0;
    frenzy = loadImage("Frenzy.png");
    hit = false;
    play = true;
    return;
  }

// Power ups
  void frenzy() {
    
    if(hit == true){
      
    }
  }

  void timerFreeze() {}

  void doublePoints() {}
  
  // Member methods
  void display() {
    imageMode(CENTER);
    image(frenzy, x, y, 90, 90);
  }
    
    boolean senseHit(Hammer h) {
    float distance = dist(x, y, h.x, h.y);
    if (distance < 100) {
      return true;
    } else {
      return false;
    }
  }

  void senseHit() {}

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
  }

  void miss() {}
