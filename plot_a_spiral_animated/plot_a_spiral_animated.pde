// PLOT POINTS IN A SPIRAL
// By Guy Moorhouse @Futurefabric

float x, y;
int number_of_points = 1000;
float circle_diameter = 5;
float plot_radius = 200;
float angle_incr = radians(25);

void setup() {
  frameRate(100);
  size(500,500);
  fill(0);
  smooth(8);
  noStroke();
}

void draw() {
  background(255); 
  translate(width/2, height/2);
  //angle_incr = radians((.005 * frameCount));
  
  for(int i=0; i<number_of_points; i++){  
    
    float ratio = i/(float)number_of_points;
    float spiral_rad = ratio * plot_radius;
    float angle = i*angle_incr;
    x = cos(angle) * spiral_rad;
    y = sin(angle) * spiral_rad;
    
    rotate(radians(-.0005 * frameCount));
    ellipse(x,y,circle_diameter,circle_diameter);
  }
}
