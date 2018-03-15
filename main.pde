void setup() {
  size(1024,720);
  pixelDensity(displayDensity());
  background(255);
  fill(0);
  frameRate(120);
}

// Global variables
PVector m_pos = new PVector(mouseX,mouseY);
PVector pm_pos = new PVector(pmouseX,pmouseY);
int pencilX = 15;
int pencilY = 15;
int weight = 4;
int col = 0;
int pressed = 0;
float vel;

// Functions
float mouse_speed(PVector m_pos,PVector pm_pos){
  float speed = sqrt((m_pos.x - pm_pos.x)*(m_pos.x - pm_pos.x) + (m_pos.y - pm_pos.y)*(m_pos.y - pm_pos.y));
  return speed;
}

// Draw function
void draw() {
  textSize(32);
  fill(col);
  strokeWeight(weight);
  strokeCap(ROUND);
  strokeJoin(ROUND);
  
  if(keyPressed) { background(255); }
  
  if (mousePressed == true){

    /*  Waga zależna od prędkości ruchu myszką
     *  Problem jest w strokeWeight, gdyż jest intem, a nie floatem.
     *
     *  Proponowane rozwiązanie: tworzenie tablicy krzywych.
     */

    /*m_pos = new PVector(mouseX,mouseY);
    pm_pos = new PVector(pmouseX,pmouseY);
    vel = mouse_speed(m_pos,pm_pos);
    weight = round(vel/10);*/
    
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}
