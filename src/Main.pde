// Ethan Reynolds

int score, time1, time2, time, min, time3;
boolean on;
PImage startScreen, endScreen, background;
PFont mono;
Timer moleTime, timer, hitTimer;
boolean play, hitTime;
Mole m1;
Hammer h1;

void setup() {
  size(700, 700);
  startScreen = loadImage("StartScreen.png");
  endScreen = loadImage("gameOver.png");
  background = loadImage("background.png");
  on = false;
  m1 = new Mole();
  time1 = 1000;
  time2 = 180000;
  time3 = 20;
  moleTime = new Timer(time2);
  moleTime.start();
  play = true;
  timer = new Timer(time1);
  timer.start();
  score = 0;
  //min = (time2/1000);
  time = time2;
  hitTime = false;
  h1 = new Hammer();
  hitTimer = new Timer(time3);
}

void draw() {
  if(frameCount % 1000 == 10){
    timer.setTotalTime();
    
  }
  println(timer.totalTime);
  mono = createFont("Font.ttf", 12);
  background (0);
  if (!on) {
    startScreen();
  } else {
    background();
    infoPannel();
    time--;

    // Display Moles
    h1.display();
    m1.display();
    if (timer.isFinished()) {
      m1.move();
      timer.start();
    }
    if (m1.senseHit(h1)) {
      score+=20;
      hitTime = true;
      //h1.x = -50;
      //h1.y = -50;
      m1.x = -500;
      m1.y = -500;
    }

    if (moleTime.isFinished()) {
      gameOver();
    }

    if (hitTime = true) {
      h1.hit();
      hitTimer.start();
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
  //while(on){
  text("Score: " + score + "    Time Left: " + time, width/2, 25);
  //}
}

void keyPressed() {
}

void startScreen() {
  image(startScreen, 0, 0, 700, 700);
  textFont(mono);
  fill(0);
  text("To play, use numbers 1-9 to hit a mole \nthat pops up out of the ground. There \nwill be power-ups that pop up and help \nyou while you are playing. Try and get \nas many points as you can in three \nminites. Have fun!", 230, 270);
  text("By: Ethan Reynolds and Soonhwi Kwon", 5, 695);
  if (mousePressed || keyPressed) {
    on = true;
  }
}

void gameOver() {
  imageMode(CENTER);
  image(endScreen, width/2, height/2, 750, 700);
  textFont(mono);
  fill(0);
  textSize(30);
  text("Score: " + score, 300, 125);
  textSize(14);
  text("Whack-A-Mole", 5, 20);
  textSize(10);
  text("By: Ethan Reynolds and Soonhwi Kwon", 5, 695);
}

void background() {
  image(background, 350, 350, 700, 700);
}
