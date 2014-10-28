// GRID OF CELLS, ANIMATED EACH CELL INDEPENDENTLY
// By Guy Moorhouse @Futurefabric

float t;
float rotate_amt;
float margin = 0;
int count = 0;

void setup() {
  size(500,500);
  rectMode(CENTER);
  noStroke();
  fill(0);
  smooth(8);
}

void draw() {
  t = mouseX*1.0/width;
  background(255);
  
  pushMatrix();
  for (int x = 25; x <= width; x += 50) {
    for (int y = 25; y <= height; y += 50) {
      pushMatrix();
      translate(x, y);
      
      rotate_amt = map(t,0,1,0,PI);
      rotate(rotate_amt);
      rect(0,0,50,25);
      count++;
      popMatrix();
    }
  }  
  popMatrix();
}
