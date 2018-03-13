void setup() {
  fullScreen();
  background(255);
  noStroke();
  fill(0);
}

int x=0;
void draw() {
  rect(x, height*0.2, 1, height*0.6);
  x = x + 2;
}
// Ty ogarnij może jak z Atoma się commity robi, a nie
