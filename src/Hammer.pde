//Ethan Reynolds & Soonhwi Kwon

class Hammer {
  // Member Variables
  int x, y, w, h, z, k;
  boolean pressed;
  PImage hammer, hammerHit;

  // Constructor
  Hammer() {
    x = 0;
    y = 0;
    w = 0;
    h = 0;
    z = 0;
    k = 0;
    pressed = false;
    hammer = loadImage("Hammer.png");
    //hammerHit = loadImage("hammerHit.png");
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    image(hammer, x, y, 75, 75);
    move();
  }

  //void hit(pressed) {}

  void move() {
    if (keyPressed) {
      if (key == '1' || key == '1') {
        x = 150;
        y = 450;
        z = 150;
        k = 450;
      } else if (key == '2' || key == '2') {
        x = 350;
        y = 450;
        z = 350;
        k = 450;
      } else if (key == '3' || key == '3') {
        x = 550;
        y = 450;
        z = 550;
        k = 450;
      } else if (key == '4' || key == '4') {
        x = 150;
        y = 250;
        z = 150;
        k = 250;
      } else if (key == '5' || key == '5') {
        x = 350;
        y = 250;
        z = 350;
        k = 250;
      } else if (key == '6' || key == '6') {
        x = 550;
        y = 250;
        z = 550;
        k = 250;
      } else if (key == '7' || key == '7') {
        x = 150;
        y = 50;
        z = 150;
        k = 50;
      } else if (key == '8' || key == '8') {
        x = 350;
        y = 50;
        z = 350;
        k = 50;
      } else if (key == '9' || key == '9') {
        x = 550;
        y = 50;
        z = 550;
        k = 50;
      }
    }
  }


  //void hit() {
  //  image(hammerHit, z, k, 75, 75);
  //  if (keyPressed) {
  //    if (key == '1' || key == '1') {
  //      x = 150;
  //      y = 450;
  //      z = 150;
  //      k = 450;
  //    } else if (key == '2' || key == '2') {
  //      x = 350;
  //      y = 450;
  //      z = 350;
  //      k = 450;
  //    } else if (key == '3' || key == '3') {
  //      x = 550;
  //      y = 450;
  //      z = 550;
  //      k = 450;
  //    } else if (key == '4' || key == '4') {
  //      x = 150;
  //      y = 250;
  //      z = 150;
  //      k = 250;
  //    } else if (key == '5' || key == '5') {
  //      x = 350;
  //      y = 250;
  //      z = 350;
  //      k = 250;
  //    } else if (key == '6' || key == '6') {
  //      x = 550;
  //      y = 250;
  //      z = 550;
  //      k = 250;
  //    } else if (key == '7' || key == '7') {
  //      x = 150;
  //      y = 50;
  //      z = 150;
  //      k = 50;
  //    } else if (key == '8' || key == '8') {
  //      x = 350;
  //      y = 50;
  //      z = 350;
  //      k = 50;
  //    } else if (key == '9' || key == '9') {
  //      x = 550;
  //      y = 50;
  //      z = 550;
  //      k = 50;
  //    }
  //  }
  //}
}
