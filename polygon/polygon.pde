// DRAW POLYGON/S
// By Guy Moorhouse @Futurefabric

//float x, y;
//int number_of_points = 80;
//int xspacing = 16;   // How far apart should each horizontal location be spaced
//float period = 500.0;  // How many pixels before the wave repeats
//float theta = 0.0;
//float amplitude = 50.0;  // Height of wave

void polygon(int side_count, float radius) {
  float theta = 0.0;
  float x = 0.0;
  float y = 0.0;
  
  beginShape();
  for(int i=0; i<side_count; i++) {
    x = cos(theta) * radius;
    y = sin(theta) * radius;
    vertex(x,y);
    theta += TWO_PI/side_count;
  }
  endShape(CLOSE);
}

void setup() {
  size(500,500);
  fill(0);
  smooth(8);
  noStroke();
}

void draw() {
  background(255);
  stroke(0);
  strokeWeight(3);
  noFill(); 
  translate(width/2, height/2);
  polygon(5, 200.0);
}
