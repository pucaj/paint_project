void setup() {
  fullScreen();
  background(0);
  noStroke();
  fill(102);
}

int x=0;
void draw() {
  rect(x, height*0.2, 1, height*0.6);
  x = x + 2;
}
