void setup() {
  size(500, 500);
  
}
void draw() {
  System.out.println(mouseX + " " + mouseY);
  int r = 240 + (int)(Math.random()*100);
  int g = 17 + (int)(Math.random()*100);
  int b = 200 + (int)(Math.random()*100);
  
  pushMatrix();
  translate(width*0.8, height*0.5);
  rotate(frameCount / -100.0);
  fill(r,g,b,20);
  star(0, 0, 30, 70, 5); 
  popMatrix();
}

void scale(int x, int y) {
  
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
