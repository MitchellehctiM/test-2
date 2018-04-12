
class Circle{
  int x;
  int y;
  int radius;
  int maxSize = 100;
  float rotOne = 0;
  
  import ddf.minim.*;

  Minim minim;
  AudioInput in;

  
  // Constructor
  Circle(int _x, int _y){
    x = _x;
    y = _y;
    radius = 0;
    
    

  colorMode(HSB,100);
  minim = new Minim(this);
  in = minim.getLineIn(Minim.STEREO, 256);

  }
  
  void update(){
    radius++;
   
    //if(radius = max_size){
    //  radius--;
    //}
    
    
  }
  
  void draw(){
    
    //my custom effect W.I.P
    //particle example aesthetic with mic amplitude effecting colour
    noFill();
    int alpha = (int)map(radius%maxSize,0,maxSize,255,0); // circles growing
    for(int i = 0; i < in.bufferSize() - 1; i++) //spacing 
  {
      stroke((1+in.left.get(i))*50,100,100); //color of top 
      ellipse(x,y,radius%maxSize,radius%maxSize); //
      rotate(rotOne);
      
      //this is me testing effects
      
          //translate(230, 0);
          //rotOne += pmouseX - pmouseY;  //random(0.1,1);  //in.bufferSize(); //how to make the drawing more random
      
          if (keyPressed && key == '1'){
          rotate(rotOne);
          translate(random(200), random(200), random(200));
          rotOne = mouseX/10 - mouseY/10;
          //translate(random(200), random(200), random(200));
            } else{
           // translate(0,0);
             } //I want to make it go back to normal when released or pressed again
    }
  }
}