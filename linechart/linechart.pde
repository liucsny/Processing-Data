Lchart l_1;

void setup() {
  size(1600, 600);
  background(255);
  l_1=new Lchart("all.csv",5);
}

void draw() {
  l_1.display(0);
}

class Lchart {
  Table table;
  float l=7;
  int i=0;
  float scale=10;

  Lchart(String name,float s) {
    table = loadTable(name, "header");
    scale = s;
  }

  void display(int type) {
    background(255,255,255,10);
    strokeWeight(3);
    stroke(#1962CC);
    //float y_1=floatMap(table.getFloat(type, i));
    //float y_2=floatMap(table.getFloat(type, i+1));
    //float y_3=floatMap(table.getFloat(type, i+2));
    //float y_4=floatMap(table.getFloat(type, i+3));
    if (i>181) {
      float y_1=floatMap(table.getFloat(type, i));
      float y_2=floatMap(table.getFloat(type, i+1));
      float y_3=floatMap(table.getFloat(type, i+2));
      line((i+1)*l, y_2, (i+2)*l, y_3);
      println(table.getFloat(type, i+2), "    ", y_1, "   ", y_2, "   ", y_3, "   ");
    } else {
      float y_1=floatMap(table.getFloat(type, i));
      float y_2=floatMap(table.getFloat(type, i+1));
      float y_3=floatMap(table.getFloat(type, i+2));
      float y_4=floatMap(table.getFloat(type, i+3));
      curve(i*l, y_1, (i+1)*l, y_2, (i+2)*l, y_3, (i+3)*l, y_4);
      println(table.getFloat(type, i+3), "    ", y_1, "   ", y_2, "   ", y_3, "   ", y_4);
    }
    //curve(i*l, y_1, (i+1)*l, y_2, (i+2)*l, y_3, (i+3)*l, y_4);
    //ellipse((i+3)*l,y_4,10,10);

    update();
  }

  void update() {
    if (i<182) {
      i++;
    } else {
      i=0;
      //noLoop();
    }
  }

  float floatMap(float v) {
    float r = map(v, 0, scale, height-50, 0);
    if (r>0) {
      return r;
    } else {
      return 0;
    }
  }
}