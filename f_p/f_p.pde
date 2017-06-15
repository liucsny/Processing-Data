import processing.pdf.*;

Dsquare p_1;
Dsquare p_2;
Dsquare p_3;
Dsquare p_4;
Dsquare p_5;
Dsquare p_6;
Dsquare p_7;
Dsquare p_8;
Dsquare p_9;
Dsquare p_10;
Dsquare p_11;
Dsquare p_12;

void setup(){
  size(1400,600);
  background(255);
  beginRecord(PDF, "p_f.pdf"); 
  p_1=new Dsquare("tmall_p_f_2.csv",50,50);
  p_2=new Dsquare("tmall_p_f_2.csv",300,50);
  p_3=new Dsquare("tmall_p_f_2.csv",550,50);
  p_4=new Dsquare("tmall_p_f_2.csv",750,50);
  p_5=new Dsquare("tmall_p_f_2.csv",1050,50);
  p_6=new Dsquare("tmall_p_f_2.csv",1300,50);
  
  p_7=new Dsquare("tmall_p_f_2.csv",50,350);
  p_8=new Dsquare("tmall_p_f_2.csv",300,350);
  p_9=new Dsquare("tmall_p_f_2.csv",550,350);
  p_10=new Dsquare("tmall_p_f_2.csv",750,350);
  p_11=new Dsquare("tmall_p_f_2.csv",1050,350);
  p_12=new Dsquare("tmall_p_f_2.csv",1300,350);
  
}

void draw(){
  background(255);
  p_1.display(0);
  p_2.display(1);
  p_3.display(2);
  p_4.display(3);
  p_5.display(4);
  p_6.display(5);
  
  p_7.display(6);
  p_8.display(7);
  p_9.display(8);
  p_10.display(9);
  p_11.display(10);
  p_12.display(11);

  endRecord();




}


class Dsquare {
  Table table;
  int i=0;
  float x;
  float y;


  Dsquare(String name,float pos_x,float pos_y){
    table = loadTable(name, "header");
    x=pos_x;
    y=pos_y;
  }
  
  void display(int type){
    //rectMode(RADIUS);
    float l=sqrt(map(table.getFloat(type, 1),0,50000,0,10000));
    float l_f=map(table.getFloat(type, 2)/l,0,1000,0,30);
    float l_p=map(table.getFloat(type, 3)/l,0,1000,0,30);
    noStroke();
    fill(0,0,100,100);
    rect(x,y,l_f,l_f);
    
    noFill();
    strokeWeight(1.5);
    stroke(100,0,0,100);
    rect(x,y,l_p,l_p);

  }
}