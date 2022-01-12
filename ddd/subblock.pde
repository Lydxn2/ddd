class DiamondBlock extends Block {
  DiamondBlock(float x, float y, float z, float size) {
    super(x, y, z, size);
    super.setTexture(
      _loadImage("data/blocks/dia/dia.png"),
      _loadImage("data/blocks/dia/dia.png"),
      _loadImage("data/blocks/dia/dia.png"),
      _loadImage("data/blocks/dia/dia.png"),
      _loadImage("data/blocks/dia/dia.png"),
      _loadImage("data/blocks/dia/dia.png")
    );
  }
}

class GrassBlock extends Block {
  GrassBlock(float x, float y, float z, float size) {
    super(x, y, z, size);
    super.setTexture(
      _loadImage("data/blocks/grass/grassU.png"),
      _loadImage("data/blocks/grass/grassD.png"),
      _loadImage("data/blocks/grass/grassS.png"),
      _loadImage("data/blocks/grass/grassS.png"),
      _loadImage("data/blocks/grass/grassS.png"),
      _loadImage("data/blocks/grass/grassS.png")
    );
  }
}

PImage _loadImage(String imgPath) {
  return loadImage(imgPath);
}
