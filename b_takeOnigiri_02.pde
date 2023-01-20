//width=1000,height=800;
float ojisanTimeObserber=0;
float xCounter=0;

void takeOnigiri() {
  image(backImg, 0, 0, width, height);
  push();
  translate(700-xCounter, 700, 100);
  shape(objOjisan);
  pop();
  cloud(200, 100);
  cloud(300, 300);
  onigiri(600-xCounter, 700);
  ojisanTimeObserber++;
  if (ojisanTimeObserber>150) {
    xCounter++;
  }
  //println(ojisanTimeObserber);
}

void cloud(float x, float y) {
  push();
  translate(x, y, 100);
  shape(objCloud);
  pop();
}

void onigiri(float x, float y) {
  push();
  translate(x, y);
  shape(objOnigiri);
  pop();
}
