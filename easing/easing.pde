// BASIC EASING DEMO — ACCELERATE, DECELERATE
// By Guy Moorhouse @Futurefabric

// Hat tip to Dave Whyte (@beesandbombs) for the easing functions

float ease(float p) {
  return 3*p*p - 2*p*p*p;
}

float ease(float p, float g) {
  if (p < 0.5) 
    return 0.5 * pow(2*p, g);
  else
    return 1 - 0.5 * pow(2*(1 - p), g);
}

float x,t;

void setup() {
  frameRate(100);
  size(500,500);
  fill(0);
  smooth(8);
  noStroke();
}

void draw() {
  pushMatrix();
  t = mouseX*1.0/width;
  background(255); 
  fill(0);
  x = map(t,0,1,0,1);
  x = (width + 50)*ease(x,2.5);
  translate(x,0);
  ellipse(-25,(height/2),50,50);
  popMatrix();
}
