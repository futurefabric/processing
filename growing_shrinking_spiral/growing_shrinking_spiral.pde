// GROWING / SHRINKING SPIRAL (DYNAMIC POINTS/ROTATION)
// By Guy Moorhouse @Futurefabric

float x, y;
int number_of_points = 1;
boolean grow = true;
float circle_diameter = 5;
float plot_radius = 200;
float angle_incr = radians(0);

void setup() {
  size(500,500);
  fill(0);
  smooth(8);
  noStroke();
}

void draw() {
  background(255); 
  translate(width/2, height/2);
  
  rotate(radians(number_of_points));
  angle_incr = radians(25);
  
  if(number_of_points > 1000) { grow = false; }
  if(number_of_points == 0) { grow=true; }
  
  if(grow == true) {
    number_of_points++; 
  }else{
    number_of_points--;
  }
  
  for(int i=0; i<number_of_points; i++){  
    
    float ratio = i/(float)number_of_points;
    float spiral_rad = ratio * plot_radius;
    float angle = i*angle_incr;
    x = cos(angle) * spiral_rad;
    y = sin(angle) * spiral_rad;
        
    ellipse(x,y,circle_diameter,circle_diameter);
  }
}
