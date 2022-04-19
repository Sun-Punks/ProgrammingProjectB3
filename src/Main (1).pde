int score = 0;
boolean on;
PImage startScreen, endScreen;
PFont mono;

void setup() {
  size(700, 700);
  startScreen = loadImage("StartScreen.png");
  endScreen = loadImage("gameOver.png");
  on = false;
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
}

void infoPannel() {
}

void keyPressed() {
}

void startScreen() {
  image(startScreen, 0, 0, 700, 700);
  textFont(mono);
  fill(0);
  text("To play, use numbers 1-9 to hit a mole \nthat pops up out of the ground. There \nwill be power-ups that pop up and help \nyou while you are playing. Try and get \nas many points as you can before the \ntime runs out. Have fun!", 230, 270);
  text("By: Ethan Reynolds and Soonhwi Kwon", 0, 700);
}

void gameOver() {
  image(endScreen, 0, 0, 700, 700);
  textFont(mono);
  fill(0);
  textSize(30);
  text("Score: ", 300, 125);
}

void background() {
}
