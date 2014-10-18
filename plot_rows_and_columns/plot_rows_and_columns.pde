// PLOT POINTS IN ROWS AND COLUMNS
// By Guy Moorhouse @Futurefabric

float x, y;
int number_of_points = 900;
float grid_across = round(sqrt(number_of_points));
float circle_diameter = 10;
float margin = 30;

void setup() {
  ellipseMode(CORNER);
  frameRate(100);
  size(500,500);
  fill(0);
  smooth(8);
  noStroke();
}

void draw() {
  background(255); 

  for(int i=0; i<number_of_points; i++){  

    x = margin + ((width-(2 * margin))/grid_across) * (i % grid_across);
    y = margin + ((height-(2 * margin))/grid_across) * ((i - i % grid_across) / grid_across);
        
    ellipse(x,y,circle_diameter,circle_diameter);
  }
}
