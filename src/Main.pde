class Main {
  public static void main(String[] args) {
   int score, time;
boolean on;
PImage startScreen, endScreen;
PFont mono;
Timer moleTime;

void setup() {
  size(700, 700);
  startScreen = loadImage("StartScreen.png");
  endScreen = loadImage("gameOver.png");
  on = false;
  m1 = new Mole();
  time = 1000;
  moleTime = new Timer(time);
  moleTime.start();
  play = true;
}

void draw() {
  mono = createFont("Font.ttf", 12);
  background (0);
  if (!on) {
    startScreen();
  }
  if(mousePressed){
    on = true;
    gameOver();
    noLoop();
  }
  
  // Display Moles
  m1.display();
  if (timer.isFinished()) {
      m1.move();
      timer.start();
      }
    }
}

void infoPannel() {
  if(on == true) {
    fill(127, 127);
    rectMode(CORNER);
    rect(0, 0, width, 50);
    fill(225);
    textAlign(CENTER);
    text("Score: " + score + "Time Left: " + time, width/2, 50);
  }
}

void keyPressed() {
}

void startScreen() {
  image(startScreen, 0, 0, 700, 700);
  textFont(mono);
  fill(0);
  text("To play, use numbers 1-9 to hit a mole \nthat pops up out of the ground. There \nwill be power-ups that pop up and help \nyou while you are playing. Try and get \nas many points as you can before the \ntime runs out. Have fun!", 230, 270);
  text("By: Ethan Reynolds and Soonhwi Kwon", 5, 695);
}

void gameOver() {
  image(endScreen, 0, 0, 700, 700);
  textFont(mono);
  fill(0);
  textSize(30);
  text("Score: ", 300, 125);
  textSize(14);
  text("Whack-A-Mole", 5, 20);
  textSize(10);
  text("By: Ethan Reynolds and Soonhwi Kwon", 5, 695);
}

void background() {
}