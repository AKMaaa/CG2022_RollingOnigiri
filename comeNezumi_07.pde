float mouseY_01=0;//初期のマウスY座標を保存する為の変数
float onigiriX_01=0;//おにぎりのX座標制する為の変数
float onigiriY_01=0;//おにぎりのY座標制する為の変数
float onigiriZ_01=0;//おにぎりのZ座標制する為の変数
float onigiriTime_in=0;

void onigiriNezumiCome() {
  comeOnigiri();
  comeNezumi();
  showWood(100,height/2-40,150);
  showWood(200,height/2-50,80);
  showWood(300,height/2-60,70);
  showWood(400,height/2-70,60);
  showWood(500,height/2-80,50);
  showWood(600,height/2-90,40);
  cloud(700,150);
  cloud(600,200);
  cloud(500,120);
  cloud(400,200);
  cloud(100,100);
  cloud(800,200);
  showKoduti();  
  //showOjisan();
}

void comeOnigiri() {
  //println(onigiriX_01,onigiriY_01,onigiriZ_01);
  push();
  translate(800-onigiriX_01, height/2+onigiriY_01-200, -400+onigiriZ_01);
  push();
  rotate(frameCount*0.3);
  translate(0, 40, 0);
  shape(objOnigiri);
  pop();
  pop();
  if (onigiriX_01>=320) {
    onigiriX_01=320;
    onigiriY_01+=2;
    onigiriZ_01=760;
    onigiriTime_in+=1;
  } else {
    onigiriX_01+=1;
    onigiriY_01=(-abs(300*cos(frameCount*0.06)))+onigiriX_01*0.5;
    onigiriZ_01+=2.2;
  }
}

void comeNezumi() {
  push();
  translate(width/2, height/2+20);
  camera(-100, -100, 200, 0, 0, 0,
    0.0, 1.0, 0.0);
  shape(objMouse);
  shape(objHall);
  if (onigiriTime_in>373) {
    if (mouseY_01<130) {
      objMouse.translate(0, -1, 0);
    }
    mouseY_01+=1;
  }
  pop();
}

void showWood(float x,float y,float z) {
  push();
  translate(x, y, z);
  shape(objWood);
  pop();
}

void showKoduti(){
push();
translate(width/2+40,height/2+160,360);
  if(onigiriTime_in>373){
    if(mouseY_01<130){
      objKoduti.translate(0,-1,0);
    }
  }
shape(objKoduti);
pop();
}
