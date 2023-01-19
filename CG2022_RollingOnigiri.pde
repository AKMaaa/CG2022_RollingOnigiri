import processing.opengl.*;

void setup() {
  background(#a0d8ef);
  size(1000, 800, OPENGL);
  colorMode(HSB,360,100,100,100);
}

void draw(){
  background(#a0d8ef);
  lights();
  sunRise();//シーン1
}
