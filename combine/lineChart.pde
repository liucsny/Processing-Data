class Lchart {
  Table table;
  float l;
  int i=0;
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

  void display(int type) {
    if(i==0){
      noStroke();
      fill(255,255,255);
      rect(pos_x,pos_y,w,h);
    }

    noStroke();
    fill(255,255,255);
    rect(pos_x,pos_y,w,h);
    noFill();
    strokeWeight(3);
    stroke(#1962CC);
    beginShape();
    for(int j=0;j<=i;j++){
      curveVertex(pos_x+j*l,pos_y+floatMap(table.getFloat(type, j)));
    }
    endShape();
    rect(pos_x,pos_y,w,h);

    update();
  }

  void update() {
    if (i<184) {
      i++;
    } else {
      //i=0;
      //noLoop();
    }
  }

  float floatMap(float v) {
    float r = map(v, 0, scale, h, 0);
    if (r>0) {
      return r;
    } else {
      return 0;
    }
  }
}