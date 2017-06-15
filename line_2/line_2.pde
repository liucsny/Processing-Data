import processing.pdf.*;

Lchart l_1;
Lchart l_2;

void setup() {
  size(1600, 600);
  background(255);
  beginRecord(PDF, "0_6.pdf");
  l_1=new Lchart("all.csv",0.2,100,100,800,200);
  l_2=new Lchart("all.csv",0.2,100,100,800,200);
}

void draw(){
  background(255);
  //l_1.display(31,#1962CC);
  l_1.display(16,#FF5050);
  l_2.display(17,#777777);
  //endRecord();
  endRecord();
}

class Lchart {
  Table table;
  float l;
  //int i=0;
  float scale;
  float w;
  float h;
  float pos_x;
  float pos_y;

  Lchart(String name,float s,float pos_x_1,float pos_y_1, float w_1,float h_1) {
    table = loadTable(name, "header");
    scale = s;
    w=w_1;
    h=h_1;
    pos_x=pos_x_1;
    pos_y=pos_y_1;
    l=w/183;
  }

  void display(int type,int c) {
    //background(255,255,255,10);
    strokeWeight(2);
    stroke(c);
    beginShape();
    for(int j=0;j<=185;j++){
      curveVertex(pos_x+j*l,pos_y+floatMap(table.getFloat(type, j)));
    }
    endShape();
    noFill();
    strokeWeight(1);
    line(pos_x,pos_y+h,pos_x+w,pos_y+h);
    //update();
  }

  //void update() {
  //  if (i<183) {
  //    i++;
  //  } else {
  //    noLoop();
  //    i=0;
  //  }
  //}

  float floatMap(float v) {
    float r = map(v, 0, scale, h, 0);
    if (r>-100) {
      return r;
    } else {
      return -100;
    }
  }
}