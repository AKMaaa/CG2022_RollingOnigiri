import processing.opengl.*;
PShape objMouse;
PShape objHall;
PShape objOnigiri;
PShape objCloud;
PShape objOjisan;
PShape objWood;
PShape objKoduti;
PImage logo;
PImage backImg;


void setup() {
  background(#a0d8ef);
  size(1000, 800, OPENGL);
  colorMode(HSB,360,100,100,100);
  
  /*モデルのロード*/
  objMouse=loadShape("data/mouse/mouse.obj");
  objHall=loadShape("data/hall2/hall.obj");
  objOnigiri=loadShape("data/onigiri/onigiri.obj");
  objCloud=loadShape("data/cloud/cloud.obj");
  objOjisan=loadShape("data/ojisan/ojisan.obj");
  objWood=loadShape("data/wood/wood.obj");
  objKoduti=loadShape("data/koduti/koduti.obj");
  logo=loadImage("data/logo.png");
  backImg=loadImage("data/back.jpg");
  
  /*モデルの初期設定*/
  objMouse.rotateX(PI/2);
  objMouse.scale(1);
  objMouse.translate(-50,190,0);
  objHall.rotateX(PI/2);
  objHall.scale(5);
  objHall.translate(0,100,0);
  objOnigiri.rotateX(PI/2);
  objOnigiri.scale(2.2);
  objOjisan.scale(6);
  objOjisan.rotateX(PI/2);
  objOjisan.rotateY(-PI/4);
  objWood.rotateX(PI/2);
  objKoduti.rotateX(PI);
  objKoduti.rotateY(PI);
  objKoduti.scale(1.5);
}

void draw(){
  background(#a0d8ef);
  lights();
  if(frameCount<=700){
  sunRise();//太陽が昇る 700
  }else if(frameCount>700&&frameCount<=1560){
  takeOnigiri();//1560
  }else if(frameCount>1560){
  onigiriNezumiCome();//1000
  }
  //println(frameCount);
}
