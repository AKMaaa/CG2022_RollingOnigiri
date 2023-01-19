import processing.opengl.*;
PShape objMouse;
PShape objHall;
PShape objOnigiri;
PImage logo;

void setup() {
  background(#a0d8ef);
  size(1000, 800, OPENGL);
  colorMode(HSB,360,100,100,100);
  
  /*モデルのロード*/
  objMouse=loadShape("data/mouse/mouse.obj");
  objHall=loadShape("data/hall2/hall.obj");
  objOnigiri=loadShape("data/onigiri/onigiri.obj");
  logo=loadImage("data/logo.png");
  
  /*モデルの初期設定*/
  objMouse.rotateX(PI/2);
  objMouse.scale(1);
  objMouse.translate(-50,190,0);
  objHall.rotateX(PI/2);
  objHall.scale(5);
  objHall.translate(0,100,0);
  objOnigiri.rotateX(PI/2);
  objOnigiri.scale(2.2);
}

void draw(){
  background(#a0d8ef);
  lights();
  //sunRise();//シーン1
  onigiriNezumiCome();
}
