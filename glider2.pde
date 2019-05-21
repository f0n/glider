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
  fill(255,150,255);
  rect(0, 0, 20, 20);
  fill(120,200,255);
  rect(20, 20, 20, 20);
  
}