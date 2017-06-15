//import processing.pdf.*;
color c;
PFont font;
float off_x=150;
float off_y=250;

Fchart f_1;
PImage map;

void setup() {
  size(1600, 1200);
  background(0);
  //blendMode(ADD);

  f_1=new Fchart("f_raw_geo 2.csv");
  font = loadFont("PingFangSC-Regular-4.vlw");
  map = loadImage("Asset 2@2x.png");
  //textFont(font, 10);
  //beginRecord(PDF,"f_sum.pdf");
}

void draw() {
  //if((frameCount>0)&&(frameCount<3)){
  //  map.resize(625, 500);
  //  image(map, 230+off_x, 230+off_y);
  //}

  
  //if(f_1.c!=c){
  //  background(0);
  //  map.resize(625, 500);
  //  image(map, 230+off_x, 230+off_y);
  //  image(map, 230+off_x, 230+off_y);
  //  //image(map, 240+off_x, 230+off_y);
  //}
  c=f_1.c;

  f_1.display();
  
  //saveFrame("line-######.png");
}

class Fchart {
  
  int i=0000;
  Table table;
  float[] r={1000,25000,100000,500000};
  color c;
  color c_o;
  float gap=0;

  Fchart(String name) {
    table = loadTable(name, "header");
  }

  void display() {
    //println(table.getFloat(i,4));//=="北京");
    //if((table.getFloat(i,6)!=39.90467168)&&(table.getFloat(i,6)!=31.23039505)&&(table.getFloat(i,6)!=23.12906597)&&(table.getFloat(i,6)!=22.54283882)){
    //println(table.getString(i,1));

    //noStroke();
    //colorMode(HSB,360,100,100,255);
    //fill(map(i,0,174,0,300),80,100);
    //h_o+=h;
    //h=map(table.getFloat(i,1),0,500000000,0,60);
    //rect( 20+h_o,30+i*10, h,30);
    
    
    //rect( 20+5*i,200+i*10, 5,30);
    ////rect(100, 5+i*0.01, 10, 0.01);
    
    //println(h_o);
    float x=(i)/38+gap;
//float l=map(table.getFloat(i,4),0,2400000,0,50); 
//stroke(0,0,0,10);
//strokeWeight(0.1);
//line(x,0-l,x,0);//*(1200/52331)+10,l,i*(1200/52331)+10,100);
    //println(table.getFloat(i,4),"     ",i);
    
    //stroke(0,0,0,100);
    //float langtitude=map(table.getFloat(i,5),0,100,0,1000)-500;
    //float altitude=map(table.getFloat(i,6),0,100,1200,0)-300;
    //ellipse(langtitude,altitude,2,2);
    
    //==============================//==============================//==============================
    
    float langtitude=map(table.getFloat(i,5),75.98972349,131.1591078,-580/2,580/2)+260+580/2;
    float altitude=map(table.getFloat(i,6),20.04428146,51.92409576,460/2,-460/2)+260+440/2;
    
    float s=map(altitude,-460,460,0.98,1.02);
    langtitude=langtitude*s*s-400*(s-1)-10;
    
    //langtitude=langtitude*s*s+100;
    //altitude=altitude+100;
    
    
    //ellipse(langtitude+off_x,altitude+off_y,2,2);
    //print(langtitude,"     ",altitude);
    //==============================//==============================//==============================
    
    c_o=c;
    
    noFill();
    if(table.getFloat(i,4)>r[3]){
      c=color(249,121,115);
    }else if(table.getFloat(i,4)>r[2]){
      c=color(237,151,74);
    }else if(table.getFloat(i,4)>r[1]){
      c=color(232,239,98);
    }else if(table.getFloat(i,4)>r[0]){
      c=color(139,239,115);
    }else{
      c=color(41,204,173);
    }
    
    if(c!=c_o){
      gap+=20;
    }
    
    float l=map(table.getFloat(i,4),0,10000000,0,300);
    
    stroke(c);
    line(x,800-l, x, 800);
    //bezier(langtitude+off_x,altitude+off_y, langtitude+off_x ,altitude+off_y-400, x,40+400, x, 40);
  //}
    //textSize(10);
    //fill(0, 0, 0);
    //text(table.getString(i,1), langtitude,altitude); 
    println(table.getFloat(i,4),"    ",l);
    update();
  }

  void update() {
    if (i<52328) {
      i+=2;
    } else {
      //endRecord();
      //i=0;
      
      noLoop();
      //endRecord();
    }
  }
}

void mousClicked(){
  saveFrame("line-######.png");
}