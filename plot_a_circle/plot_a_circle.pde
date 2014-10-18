// PLOT POINTS IN A CIRCLE
// By Guy Moorhouse @Futurefabric

float x, y;
int number_of_points = 17;
float circle_diameter = 20;
float plot_radius = 150;

void setup() {
  size(500,500);
  fill(0);
  smooth(8);
  noStroke();
}

void draw() {
  background(255); 
  translate(width/2, height/2);
  
  for(int i=0; i<number_of_points; i++){    
    x = plot_radius * cos(2*PI*i/number_of_points);
    y = plot_radius * sin(2*PI*i/number_of_points);
    ellipse(x,y,circle_diameter,circle_diameter);
  }
}
