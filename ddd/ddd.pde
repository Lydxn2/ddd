PImage block;
void setup() {
  size(800, 800, P3D);
  block = loadImage("data/diamond.png");
}

final int DIM = 160;
float rotX, rotY, S, M = 200;

void draw() {
  background(255);
  
  pushMatrix();
  translate(width / 2, height / 2, 0);
  
  scale(sin(S) * M);
  S = (S + 10 / M) % PI;
  M -= 0.3;
  
  rotateX(rotX);
  rotateY(rotY);
  
  noStroke();
  
  beginShape(QUADS);
  texture(block);
  
  // T
  vertex(-1, -1, -1, 0, 0);
  vertex( 1, -1, -1, DIM, 0);
  vertex( 1, -1,  1, DIM, DIM);
  vertex(-1, -1,  1, 0, DIM);
  
  // B
  vertex(-1,  1, -1, 0, 0);
  vertex( 1,  1, -1, DIM, 0);
  vertex( 1,  1,  1, DIM, DIM);
  vertex(-1,  1,  1, 0, DIM);
  
  // L
  vertex(-1, -1, -1, 0, 0);
  vertex(-1, -1,  1, DIM, 0);
  vertex(-1,  1,  1, DIM, DIM);
  vertex(-1,  1, -1, 0, DIM);
  
  // R
  vertex( 1, -1, -1, 0, 0);
  vertex( 1, -1,  1, DIM, 0);
  vertex( 1,  1,  1, DIM, DIM);
  vertex( 1,  1, -1, 0, DIM);
  
  // F
  vertex(-1, -1, -1, 0, 0);
  vertex( 1, -1, -1, DIM, 0);
  vertex( 1,  1, -1, DIM, DIM);
  vertex(-1,  1, -1, 0, DIM);
  
  // B
  vertex(-1, -1,  1, 0, 0);
  vertex( 1, -1,  1, DIM, 0);
  vertex( 1,  1,  1, DIM, DIM);
  vertex(-1,  1,  1, 0, DIM);
  
  endShape();

  popMatrix();
  
  rotX += 0.05;
  rotY += 0.05;
}

void mouseDragged() {
  //rotX = rotX + (pmouseY - mouseY) * 0.01;
  //rotY = rotY + (pmouseX - mouseX) * 0.01;
}
