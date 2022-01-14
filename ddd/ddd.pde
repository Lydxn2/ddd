float rotX, rotY, zoom = 1;

Block dia, grass, dirt;

void setup() {
  size(800, 800, P3D);
  
  textureMode(NORMAL);
  
  dia = new DiamondBlock(0, 0, 0, 100);
  grass = new GrassBlock(0, 100, 0, 100);
  dirt = new DirtBlock(100, 0, 0, 100);
}

void draw() {
  background(255);

  dia.render();
  grass.render();
  dirt.render();
}

void mouseDragged() {
  rotX = rotX + (mouseY - pmouseY) * -0.01;
  rotY = rotY + (mouseX - pmouseX) * 0.01;
}

void mouseWheel(MouseEvent event) {
  zoom += event.getCount() * 0.05;
}
