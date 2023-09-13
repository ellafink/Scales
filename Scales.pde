void setup() {
  size(1020, 1020);
}
void draw() {
  background(#FFF9B2);
  System.out.println(mouseX + " " + mouseY);
  for(int x = 60; x < 1000; x+=100) {
    for(int y = 60; y < 1000; y+=100) {
      scale(x,y);
    }
    System.out.println();
  }
}


void scale(int x, int y) {
//ellipse
  fill(#0D0493);
  ellipse(x, y, 100, 100);
//16-17, 22-31 sourced from processing website (has been edited for my program)
  float angle = TWO_PI / 15;
  float halfAngle = angle/2.0;
  int r = (int)(Math.random()*255);
  int g = (int)(Math.random()*255);
  int b = (int)(Math.random()*255);
  fill(r, g, b);
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * 49;
    float sy = y + sin(a) * 49;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * 25;
    sy = y + sin(a+halfAngle) * 25;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
