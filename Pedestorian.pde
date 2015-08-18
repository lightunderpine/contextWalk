class Pedestorian {
  int posX;
  int posY;
  //  int pedRadius;

  Pedestorian(int _X, int _Y) {
    posX = _X;
    posY = _Y;
  }

  void display() {
    strokeWeight(5);
    fill(180, 230, 100);
    rect(posX, posY, 10, 10);
  }

  void update() {
    if (mousePressed) {
      posX = mouseX;
      posY = mouseY;
    }
  }
}

