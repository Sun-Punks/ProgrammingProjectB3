int score, time1, time2, time;
boolean on;
PImage startScreen, endScreen;
PFont mono;
Timer moleTime, timer;
boolean play;
Mole m1;

void setup() {
  size(700, 700);
  startScreen = loadImage("StartScreen.png");
  endScreen = loadImage("gameOver.png");
  on = false;
  m1 = new Mole();
  time1 = 1000;
  time2 = 180000;
  moleTime = new Timer(time2);
  moleTime.start();
  play = true;
  timer = new Timer(time1);
  timer.start();
  score = 0;
  time = time2;
}

void draw() {
  mono = createFont("Font.ttf", 12);
  background (0);
  if (!on) {
    startScreen();
  } else {
    infoPannel();


    // Display Moles
    m1.display();
    if (timer.isFinished()) {
      m1.move();
      timer.start();
    }
  }
}

void infoPannel() {
  //if (on == true) {
    fill(127, 127);
    rectMode(CORNER);
    rect(0, 0, width, 50);
    fill(225);
    textAlign(CENTER);
    color(255);
    textSize(15);
    text("Score: " + score + "    Time Left: " + time, width/2, 25);
  //}
}

void keyPressed() {
}

void startScreen() {
  image(startScreen, 0, 0, 700, 700);
  textFont(mono);
  fill(0);
  text("To play, use numbers 1-9 to hit a mole \nthat pops up out of the ground. There \nwill be power-ups that pop up and help \nyou while you are playing. Try and get \nas many points as you can before the \ntime runs out. Have fun!", 230, 270);
  text("By: Ethan Reynolds and Soonhwi Kwon", 5, 695);
  if (mousePressed) {
    on = true;
  }
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
