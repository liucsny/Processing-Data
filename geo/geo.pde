color c;
PFont font;

Fchart f_1;
PImage map;

void setup() {
  size(1920, 1000);
  background(0);
  blendMode(ADD);

  f_1=new Fchart("f_geo.csv");
  font = loadFont("PingFangSC-Regular-4.vlw");
  map = loadImage("Asset 2@2x.png");
  //textFont(font, 10);
  //beginRecord(PDF,"f_sum.pdf");
}

void draw() {
  //if((frameCount>0)&&(frameCount<3)){
  //  map.resize(625, 530);
  //  image(map, 250, 220);
  //}


  
  //if(f_1.c!=c){
  //  background(0);
  //}
  //c=f_1.c;
  //noStroke();
  //fill(0,0,0,3);
  //rect(0,0,width,height);
  f_1.display();
  
  //saveFrame("line-######.png");
}

class Fchart {
  
  int i=0;
  Table table;
  float[] r={1000,25000,100000,500000};
  color c=color(255,255,255,60);
  color c_o;
  float gap=0;

  Fchart(String name) {
    table = loadTable(name, "header");
  }

  void display() {

    //noStroke();
    //colorMode(HSB,360,100,100,255);
    //fill(map(i,0,174,0,300),80,100);
    //h_o+=h;
    //h=map(table.getFloat(i,1),0,500000000,0,60);
    //rect( 20+h_o,30+i*10, h,30);
    
    
    //rect( 20+5*i,200+i*10, 5,30);
    ////rect(100, 5+i*0.01, 10, 0.01);
    
    //println(h_o);
    float x=i*20+20;
//float l=map(table.getFloat(i,4),0,2400000,0,50); 
//stroke(0,0,0,10);
//strokeWeight(0.1);
//line(x,0-l,x,0);//*(1200/52331)+10,l,i*(1200/52331)+10,100);
    println(table.getFloat(i,4),"     ",i);
    
    //stroke(0,0,0,100);
    //float s=
    float langtitude=map(table.getFloat(i,3),75.98972349,131.1591078,-580/2,580/2)+240+580/2;
    float altitude=map(table.getFloat(i,2),20.04428146,51.92409576,460/2,-460/2)+260+440/2;
    
    float s=map(altitude,0,420,0.98,1.02);
    langtitude=langtitude*s*s;
    
    ellipse(langtitude,altitude,2,2);
    
    c_o=c;
    
    noFill();
    

    //if(table.getFloat(i,4)>r[3]){
    //  c=color(249,121,115,3);
    //}else if(table.getFloat(i,4)>r[2]){
    //  c=color(239,132,72,3);
    //}else if(table.getFloat(i,4)>r[1]){
    //  c=color(232,239,98,3);
    //}else if(table.getFloat(i,4)>r[0]){
    //  c=color(139,239,115,3);
    //}else{
    //  c=color(41,204,173,3);
    //}
    
    //if(c!=c_o){
    //  gap+=20;
    //}
    strokeWeight(0.1);
    
    stroke(c);
    bezier(langtitude,altitude, langtitude ,altitude-300, 100,x, 0,x);
    //textSize(10);
    fill(255, 255, 255);
    text(table.getString(i,6), 0,x); 
    update();
  }

  void update() {
    if (i<358) {
      i+=1;
    } else {
      //endRecord();
      //i=0;
      noLoop();
      //endRecord();
    }
  }
}