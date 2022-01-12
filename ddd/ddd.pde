float rotX, rotY, zoom = 1;

Block dia, grass0, grass1;

void setup() {
  size(800, 800, P3D);
  
  textureMode(NORMAL);
  
  dia = new DiamondBlock(0, 0, 0, 100);
  grass0 = new GrassBlock(0, 100, 0, 100);
  grass1 = new GrassBlock(100, 0, 0, 100);
}

void draw() {
  background(255);

  dia.render();
  grass0.render();
  grass1.render();
}

void mouseDragged() {
  rotX = rotX + (mouseY - pmouseY) * -0.01;
  rotY = rotY + (mouseX - pmouseX) * 0.01;
}

void mouseWheel(MouseEvent event) {
  zoom += event.getCount() * 0.05;
}
