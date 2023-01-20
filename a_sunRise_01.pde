//width=1000,height=800;
float sunY=800;

void sunRise() {
  background(200, 50, map(sunY, 800, 300, 0, 100));
  noStroke();
  push();
  translate(width/2, sunY, 0);
  fill(#fdb86b);
  sphere(150);//太陽
  rotate(frameCount*0.01);
  for (float i=0; i<=2*PI; i+=PI/6) {
    push();
    rotate(i);
    translate(0, 200, 0);
    pillar(50, 0, 30);//太陽のとげ
    pop();
  }
  pop();

  println("sunY = "+sunY);
  if (sunY>300) {
    sunY-=1;
  }

  mountain();
}

void mountain() {
  /*山*/
  push();
  translate(0, 0, 250);
  fill(90, 50, map(sunY, 800, 300, 0, 90));
  ellipse(800, 700, 1000, 500);
  fill(110, 50, map(sunY, 800, 300, 0, 90));
  ellipse(200, 700, 800, 600);
  pop();
  if (sunY<=300) {
    push();
    translate(0, 0, 300);
    image(logo, 0, 0, width, height);
    pop();
  }
}


void pillar(float length, float radius1, float radius2) {
  float x, y, z;
  pushMatrix();
  //上面の作成
  beginShape(TRIANGLE_FAN);
  y = -length / 2;
  vertex(0, y, 0);
  for (int deg = 0; deg <= 360; deg = deg + 10) {
    x = cos(radians(deg)) * radius1;
    z = sin(radians(deg)) * radius1;
    vertex(x, y, z);
  }
  endShape();              //底面の作成
  beginShape(TRIANGLE_FAN);
  y = length / 2;
  vertex(0, y, 0);
  for (int deg = 0; deg <= 360; deg = deg + 10) {
    x = cos(radians(deg)) * radius2;
    z = sin(radians(deg)) * radius2;
    vertex(x, y, z);
  }
  endShape();
  //側面の作成
  beginShape(TRIANGLE_STRIP);
  for (int deg =0; deg <= 360; deg = deg + 5) {
    x = cos(radians(deg)) * radius1;
    y = -length / 2;
    z = sin(radians(deg)) * radius1;
    vertex(x, y, z);
    x = cos(radians(deg)) * radius2;
    y = length / 2;
    z = sin(radians(deg)) * radius2;
    vertex(x, y, z);
  }
  endShape();
  popMatrix();
}
