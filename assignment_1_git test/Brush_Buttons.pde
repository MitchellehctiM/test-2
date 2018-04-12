class Brushes{

PImage img1;

void setup(){
  img1 = loadImage("circle_brush.png");
}


void drawBrush() {
image(img1, 100, 100, 50, 50);
  }
}