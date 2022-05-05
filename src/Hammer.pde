//Ethan Reynolds

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
    imageMode(CENTER);
    image(hammer, x, y, 75, 75);
    move();
  }

  //void hit(pressed) {}

  void move() {
    if(keyPressed){
      if (key == '1' || key == '1') {
        x = 150;
        y = 550;
      } else if(key == '2' || key == '2') {
        x = 350;
        y = 550;
      } else if(key == '3' || key == '3') {
        x = 550;
        y = 550;
      } else if(key == '4' || key == '4') {
        x = 150;
        y = 350;
      } else if(key == '5' || key == '5') {
        x = 350;
        y = 350;
      } else if(key == '6' || key == '6') {
        x = 550;
        y = 350;
      } else if(key == '7' || key == '7') {
        x = 150;
        y = 150;
      } else if(key == '8' || key == '8') {
        x = 350;
        y = 150;
      } else if(key == '9' || key == '9') {
        x = 550;
        y = 150;
      }
    }
  }
  
}
