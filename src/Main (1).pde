class Main {
  public static void main(String[] args) {
    int score = 0;
boolean on;
PImage startScreen;
PFont mono;

void setup() {
  size(1000, 1000);
  startScreen = loadImage("StartScreen.png");
  on = false;
}

void draw() {
  mono = createFont("Font.ttf", 24);
  background (0);
  if(!on){
    image(startScreen, 0, 0, 1000, 1000);
  }
}

void infoPannel() {
}

void keyPressed() {
}

void startScreen() {
  image(startScreen, 0, 0);
  textFont(mono);
  text("To play, use numbers 1-9 to hit a mole that pops up out of the ground. There will be powe-ups that pop up and help you while you are playing. Try and get as many points as you can before the time runs out. Have fun!", 48, 240);
  text("By: Ethan Reynolds and Soonhwi Kwon", 50, 300);
}

void gameOver() {
}

void background() {
}

  }
}