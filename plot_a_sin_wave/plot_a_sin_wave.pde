// PLOT POINTS IN A SINE WAVE
// By Guy Moorhouse @Futurefabric

float x, y;
int number_of_points = 80;
int xspacing = 16;   // How far apart should each horizontal location be spaced
float period = 500.0;  // How many pixels before the wave repeats
float theta = 0.0;
float amplitude = 50.0;  // Height of wave

void setup() {
  size(500,500);
  fill(0);
  smooth(8);
  noStroke();
}

void draw() {
  background(255); 
  translate(10, height/2);
  
  for(int i=0; i<number_of_points; i++){
    theta += 0.02;
    x = theta;
    x+= (TWO_PI / period) * xspacing
    y = sin(x) * amplitude;
    ellipse(x,y,circle_diameter,circle_diameter);
  }
}
