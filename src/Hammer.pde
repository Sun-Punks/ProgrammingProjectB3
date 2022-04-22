//Name

class Hammer {
  // Member Variables
  int x, y, w, h;
  boolean pressed;
  PImage hammer;

  // Constructor
  Hammer() {
    x = 0;
    y = 0;
    w = 0;
    h = 0;
    pressed = false;
    hammer = loadImage("fakeHammer.jpg");
  }

  // Member Methods
  void display() {
    image(hammer, x, y, 50, 50);
    move();
  }

  //void hit(pressed) {}

  void move() {
    if(keyPressed){
      if (key == '1' || key == '1') {
        x = 50;
        y = 600;
      } else if(key == '2' || key == '2') {
        x = 300;
        y = 600;
      }
    }
  }
}
