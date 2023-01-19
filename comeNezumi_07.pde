float mouseY_01=0;//初期のマウスY座標を保存する為の変数
float onigiriX_01=0;//おにぎりのX座標制する為の変数
float onigiriY_01=0;//おにぎりのY座標制する為の変数
float onigiriZ_01=0;//おにぎりのZ座標制する為の変数
float onigiriTime_in=0;

void onigiriNezumiCome() {
  comeOnigiri();
  comeNezumi();
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
  translate(width/2, height/2);
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
