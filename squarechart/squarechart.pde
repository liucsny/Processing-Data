float[] r_1={0.020,0.023,0.028,0.033,0.047,0.151};
float[] r_2={0.30,0.36,0.46,0.5,0.64,2.41};

int a=0;
int b=2;
int c=1;

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

Dsquare f_1;
Dsquare f_2;
Dsquare f_3;
Dsquare f_4;
Dsquare f_5;
Dsquare f_6;
Dsquare f_7;
Dsquare f_8;
Dsquare f_9;
Dsquare f_10;
Dsquare f_11;
Dsquare f_12;

Dsquare c_1;
Dsquare c_2;
Dsquare c_3;
Dsquare c_4;
Dsquare c_5;
Dsquare c_6;
Dsquare c_7;
Dsquare c_8;
Dsquare c_9;
Dsquare c_10;
Dsquare c_11;
Dsquare c_12;

void setup(){
  size(1500,1000);
  background(255);
  smooth();
  p_1=new Dsquare("all.csv",r_1);
  p_2=new Dsquare("all.csv",r_1);
  p_3=new Dsquare("all.csv",r_1);
  p_4=new Dsquare("all.csv",r_1);
  p_5=new Dsquare("all.csv",r_1);
  p_6=new Dsquare("all.csv",r_1);
  p_7=new Dsquare("all.csv",r_1);
  p_8=new Dsquare("all.csv",r_1);
  p_9=new Dsquare("all.csv",r_1);
  p_10=new Dsquare("all.csv",r_1);
  p_11=new Dsquare("all.csv",r_1);
  p_12=new Dsquare("all.csv",r_1);
  
  f_1=new Dsquare("all.csv",r_1);
  f_2=new Dsquare("all.csv",r_1);
  f_3=new Dsquare("all.csv",r_1);
  f_4=new Dsquare("all.csv",r_1);
  f_5=new Dsquare("all.csv",r_1);
  f_6=new Dsquare("all.csv",r_1);
  f_7=new Dsquare("all.csv",r_1);
  f_8=new Dsquare("all.csv",r_1);
  f_9=new Dsquare("all.csv",r_1);
  f_10=new Dsquare("all.csv",r_1);
  f_11=new Dsquare("all.csv",r_1);
  f_12=new Dsquare("all.csv",r_1);
  
  c_1=new Dsquare("all.csv",r_2);
  c_2=new Dsquare("all.csv",r_2);
  c_3=new Dsquare("all.csv",r_2);
  c_4=new Dsquare("all.csv",r_2);
  c_5=new Dsquare("all.csv",r_2);
  c_6=new Dsquare("all.csv",r_2);
  c_7=new Dsquare("all.csv",r_2);
  c_8=new Dsquare("all.csv",r_2);
  c_9=new Dsquare("all.csv",r_2);
  c_10=new Dsquare("all.csv",r_2);
  c_11=new Dsquare("all.csv",r_2);
  c_12=new Dsquare("all.csv",r_2);
}

void draw(){
  //fill(255,255,255,10);
  //rect(0,0,width,height);
  
  p_1.display(c+3*0,0,0);
  p_2.display(c+3*1,120,0);
  p_3.display(c+3*2,240,0);
  p_4.display(c+3*3,360,0);
  p_5.display(c+3*4,480,0);
  p_6.display(c+3*5,600,0);
  p_7.display(c+3*6,720,0);
  p_8.display(c+3*7,840,0);
  p_9.display(c+3*8,960,0);
  p_10.display(c+3*9,1080,0);
  p_11.display(c+3*10,1200,0);
  p_12.display(c+3*11,1320,0);
  
  f_1.display(b,0,350);
  f_2.display(b+3*1,120,350);
  f_3.display(b+3*2,240,350);
  f_4.display(b+3*3,360,350);
  f_5.display(b+3*4,480,350);
  f_6.display(b+3*5,600,350);
  f_7.display(b+3*6,720,350);
  f_8.display(b+3*7,840,350);
  f_9.display(b+3*8,960,350);
  f_10.display(b+3*9,1080,350);
  f_11.display(b+3*10,1200,350);
  f_12.display(b+3*11,1320,350);
  
  c_1.display(a,0,700);
  c_2.display(a+3,120,700);
  c_3.display(a+3*2,240,700);
  c_4.display(a+3*3,360,700);
  c_5.display(a+3*4,480,700);
  c_6.display(a+3*5,600,700);
  c_7.display(a+3*6,720,700);
  c_8.display(a+3*7,840,700);
  c_9.display(a+3*8,960,700);
  c_10.display(a+3*9,1080,700);
  c_11.display(a+3*10,1200,700);
  c_12.display(a+3*11,1320,700);
}

class Dsquare {
  Table table;
  int i=0;
  int[] date={511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111};
  int[] c={#1962CC,#6697DD,#B8CFEF,#EDEDED,#E29595,#C83434,#BA0202,255};
  float[] range;
  
  Dsquare(String name,float[] r){
    table = loadTable(name, "header");
    range=r;
  }
  
  void display(int type,float x,float y){

    noStroke();
    fill(255);
    if(i==0){
      rect(x,y,90,290);
    }
    fill(c[selectColor(table.getFloat(type, i))]);
    println(i,"  ",table.getFloat(type, i),"   ",selectColor(table.getFloat(1, i)));
    rect(x+((i+3)%7+1)*10,y+((i+3)/7+1)*10,9,9);
    update();
  }
  
  void update(){
    if(i<184){
      i++;
    }else{
      i=0;
      noLoop();
    }
  }
  
  int selectColor(float v){
    if(v==0){
      return 7;
    }else if(v<range[0]){
      return 0;
    }else if(v<range[1]){
      return 1;
    }else if(v<range[2]){
      return 2;
    }else if(v<range[3]){
      return 3;
    }else if(v<range[4]){
      return 4;
    }else if(v<range[5]){
      return 5;
    }else{
      return 6;
    }
  }

}