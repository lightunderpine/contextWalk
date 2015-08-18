
PFont font;
PImage mapImage;
PrintWriter output; //output file
int step = 2400;
String filename = "log/log"+nf(year(),2)+nf(month(),2)+nf(day(),2)+nf(hour(),2)+nf(minute(),2)+ nf(second(),2)+".txt";

Pedestorian aPedestorian; 
ProgresBar mybar;

//-------------------------------------
void setup() {
  size(600, 480);
  font = createFont("FFScala-32.vlw", 32);
  mapImage = loadImage("takatsuki.png");
 
  aPedestorian = new Pedestorian(20, 200);
  mybar = new ProgresBar(step); 
  output = createWriter(filename); 
}


//--------------------------------------
void draw() {
  
  if (step<=0) {  //
    output.flush();  // 出力バッファに残っているデータを全て書き出し
    output.close();  // ファイルを閉じる
    exit();
  }
  step--; // カウントアップ
  
  background(128);
  image(mapImage, 0, 0);

  aPedestorian.update();
  aPedestorian.display();

  mybar.display();
  
  output.println(aPedestorian.posX + "," + aPedestorian.posY);
}

