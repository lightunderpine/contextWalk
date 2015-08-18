class ProgresBar {
  float time;
  int count;

  ProgresBar(float _time) {
    time = _time;
    count = 0;
  }

  void display() {
    fill(100, 100, 100);
    if (count<time) {
      count++;
    }
   //displaying bars
    strokeWeight(1);
    fill(0, 0, 0);//black
    rect(0, 0, 50, 5);
    fill(250, 240, 13);//yellow
    rect(51, 0, 30, 5);
    fill(10, 240, 210);//lightblue
    rect(81, 0, 100, 5);
    fill(250, 240, 13);//yellow
    rect(181, 0, 20, 5);
    fill(0, 0, 0);//black
    rect(201, 0, 40, 5);
    fill(0, 240, 0);//green;    
    rect(0, 5, int(count*(240/time)), 5);

    //displaying steps;
    textFont(font, 32);
    text(count, 15, 400);
  }
}

