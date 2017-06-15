import processing.pdf.*;

Fchart f_1;

void setup(){
  size(4200, 3200);
  background(255);
  f_1=new Fchart("finance.csv");

  beginRecord(PDF, "f_1.pdf"); 
}

void draw(){
  f_1.display();
}

class Fchart{
  Table table;
  int i=0;
  int j=0;
  int age;
  float pos_y=0;
  int[] c={#339396,#22CEB4,#7DDD9A,#94EA85,#FFF64D,#EFCD68,#E6A94D,#D74B0E,#D10F00,#84004C};
  float[] range={100,500,1000,5000,10000,50000,100000,500000,1000000};
  
  Fchart(String name) {
    table = loadTable(name, "header");
  }
  
  void display(){
    if(table.getInt(i, 1)==1){
      if(age!=table.getInt(i, 2)){
        j=0;
        pos_y+=42;
        println(age);
      }
      age = table.getInt(i, 2);
      noStroke();
      fill(c[selectColor(table.getInt(i, 3))]);
      rect(4*(j/10),4*(j%10)+pos_y,3,3);
      j++;
    }

    
    update();
  }
  
  void update(){
    if (i<52307) {
      i++;
    } else {
      //i=0;
      noLoop();
      endRecord();
    }
  }
  
    int selectColor(float v){
    if(v<range[0]){
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
    }else if(v<range[6]){
      return 6;
    }else if(v<range[7]){
      return 7;
    }else if(v<range[8]){
      return 8;
    }else{
      return 9;
    }
  }
  
  //void groupRect(int h){
  //  rect(0,0,5,5);
  //}
}