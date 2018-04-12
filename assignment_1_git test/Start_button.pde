class Button
{
  int x;
  int y;
  int w;
  int h;
  color c;
  boolean startButton;


 void setup(){
   
   startButton = false;
   
 }
  
 void update(){
   if(mousePressed) {   
     if((mouseX > x) && (mouseX < (x+w)) && (mouseY > y) && (mouseY < (y+h)))
     onClick();
     startButton = true; //is this doing anything?
     println("start");
     } 
       else {
       c = color(255);
   }
 }
 
 
 void onClick() 
 {
  c = color (0);
 }
 
 void setPosition(int a, int b)
 {
   x = a;
   y = b;  
 }
 
 void setColour(color col){
   c = col;
 }
 
 void setSize(int a, int b)
 {
   w = a;
   h = b;
 }
 
 void drawButton()
 {
  fill(c);
  noStroke();
  rectMode(CENTER);
  rect(x,y,w,h);  
  fill(0);
  textSize(100);
  textAlign(CENTER);
  text("Start",x,height/2);
 }
  
  
}