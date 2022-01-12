class Block {
  PImage texU, texD, texL, texR, texF, texB;
  float x, y, z;
  float size, scale;
  
  Block(float x, float y, float z, float size) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.size = size;
    
    this.scale = 1;
  }

  void render() {
    setScale(zoom);
    
    noStroke();
    
    pushMatrix();
    translate(width / 2, height / 2, 0);
    
    rotateX(rotX);
    rotateY(rotY);
    scale(this.scale);
    
    // UP
    beginShape(QUADS);
    texture(texU);
    vertex(x-size/2, y-size/2, z-size/2, 0, 0);
    vertex(x+size/2, y-size/2, z-size/2, 1, 0);
    vertex(x+size/2, y-size/2, z+size/2, 1, 1);
    vertex(x-size/2, y-size/2, z+size/2, 0, 1);
    endShape();
    
    // DOWN
    beginShape(QUADS);
    texture(texD);
    vertex(x-size/2, y+size/2, z-size/2, 0, 0);
    vertex(x+size/2, y+size/2, z-size/2, 1, 0);
    vertex(x+size/2, y+size/2, z+size/2, 1, 1);
    vertex(x-size/2, y+size/2, z+size/2, 0, 1);
    endShape();
    
    // LEFT
    beginShape(QUADS);
    texture(texL);
    vertex(x-size/2, y-size/2, z-size/2, 0, 0);
    vertex(x-size/2, y-size/2, z+size/2, 1, 0);
    vertex(x-size/2, y+size/2, z+size/2, 1, 1);
    vertex(x-size/2, y+size/2, z-size/2, 0, 1);
    endShape();
    
    // RIGHT
    beginShape(QUADS);
    texture(texR);
    vertex(x+size/2, y-size/2, z-size/2, 0, 0);
    vertex(x+size/2, y-size/2, z+size/2, 1, 0);
    vertex(x+size/2, y+size/2, z+size/2, 1, 1);
    vertex(x+size/2, y+size/2, z-size/2, 0, 1);
    endShape();
    
    // FRONT
    beginShape(QUADS);
    texture(texF);
    vertex(x-size/2, y-size/2, z-size/2, 0, 0);
    vertex(x+size/2, y-size/2, z-size/2, 1, 0);
    vertex(x+size/2, y+size/2, z-size/2, 1, 1);
    vertex(x-size/2, y+size/2, z-size/2, 0, 1);
    endShape();
    
    // BACK
    beginShape(QUADS);
    texture(texB);
    vertex(x-size/2, y-size/2, z+size/2, 0, 0);
    vertex(x+size/2, y-size/2, z+size/2, 1, 0);
    vertex(x+size/2, y+size/2, z+size/2, 1, 1);
    vertex(x-size/2, y+size/2, z+size/2, 0, 1);
    endShape();
    
    popMatrix();
  }
  
  void setScale(float scale) {
    this.scale = scale;
  }
  
  void setTexture(PImage texU,
                  PImage texD,
                  PImage texL,
                  PImage texR,
                  PImage texF,
                  PImage texB) {
    this.texU = texU;
    this.texD = texD;
    this.texL = texL;
    this.texR = texR;
    this.texF = texF;
    this.texB = texB;
  }
}
