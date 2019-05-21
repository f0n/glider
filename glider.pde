// Variables
float RPM = 1;
float rotation = 0;
float CLenterX = 0;
float CLenterY = 0;

// Setup the Processing Canvas
void setup(){
  size( 600, 1400 );
  frameRate( 200 );
  trike = loadImage("trike.png");
  prop  = loadImage("prop.png");
  cloud = loadImage("cloud.png");

}

void draw() {
  background(#ffffff);
  imageMode(CENTER);
  rotation += RPM


  CLenterX = width/2;
  CLenterY = 530;


  pushMatrix();
    translate(150+width/4+12*sin(frameCount/100), 150+20*cos(frameCount/333));
    rotate(rotation);
    image (prop, 0, 0, 130, 130);
  popMatrix();

  pushMatrix();
    translate(140+width/4+12*sin(frameCount/100), 125+20*cos(frameCount/333));
    rotate(radians(5)*sin(frameCount/1000));
    image (trike, 0, 0, 500, 200);
    popMatrix();

  line (150+width/4+12*sin(frameCount/100), 125+20*cos(frameCount/333), width/2, height);
  /*
  translate(58, 48, 0);
  rotateY(0.5);
  box(40, 20, 50);*/
}
