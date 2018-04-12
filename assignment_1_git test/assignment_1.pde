Button b;
Brushes br;
int buttonW, buttonH, buttonX, buttonY;

ArrayList<Circle> circles = new ArrayList<Circle>();
float rotOne = 0;


void setup(){
  size(900,900,P2D);
  
  
  
  
  b = new Button();
  b.setPosition(width/2, height/2);
  b.setSize(335,200);
  b.setColour (color(255));
  
}

void draw(){
  background(0);
  
  b.update();
  b.drawButton(); 
  //br.drawBrush();
  
  for(int i = 0; i < circles.size(); i++){
    Circle circle = circles.get(i);
    circle.update();
    circle.draw();  
    
    
    

  
  
  }
}

void keyPressed(){
  if(key == 'c'){
      circles.clear();
  }
 
 if (key =='s'){
   save("/Users/Mitchell/Desktop"+("#####.png"));
 }
}



void mouseDragged(){
  circles.add(new Circle(mouseX, mouseY));
}