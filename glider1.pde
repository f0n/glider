// Variables
float RPM = 1;
float rotation = 0;
float CLenterX = 0;
float CLenterY = 0;

// Setup the Processing Canvas
void setup(){
  size( 1600, 900 );
  frameRate( 200 );
  
  prop  = loadImage("prop.png");
  cloud = loadImage("cloud.png");

}

void draw() {
  background(#ffffff);
  imageMode(CENTER);
  rotation += RPM

    
  CLenterX = 10+ width/4;
  CLenterY = height/4;
  
  
  pushMatrix(); 
    translate(10+width/4+12*sin(frameCount/100), 25+height/4+20*cos(frameCount/333));
    rotate(rotation);
    image (prop, 0, 0, 130, 130);
  popMatrix();

  pushMatrix(); 
    translate(width/4+12*sin(frameCount/100), height/4+20*cos(frameCount/333));
    rotate(radians(5)*sin(frameCount/1000));
    //image (trike, 0, 0, 500, 200);
  popMatrix();  
  
  pushMatrix();
    fill(#FFFF00);
    rect(10-100+width/4+12*sin(frameCount/100), 25+height/4+20*cos(frameCount/333), 200, 3+2*cos(frameCount/333));
    rect(10+width/4+12*sin(frameCount/100), 25-70+height/4+20*cos(frameCount/333), 1+4*sin(frameCount/100), 90); 
    rotate(radians(-3));
    rect(-2+width/4+12*sin(frameCount/100), height/4+20*cos(frameCount/333), 350, 10);
    rotate(radians(6));
    rect(23+width/4+12*sin(frameCount/100), -45+height/4+20*cos(frameCount/333), -350, 10)
  popMatrix();
  
  line (10+width/4+12*sin(frameCount/100), 25+height/4+20*cos(frameCount/333), width/4, height);
}