float[] r_1={0.020,0.023,0.028,0.033,0.047,0.151};
float[] r_2={0.30,0.36,0.46,0.5,0.64,2.41};

boolean squareActive=false;

Dsquare p_1;
Lchart l_1;

void setup(){  
  size(1080,600);
  background(255);
  smooth();
  p_1=new Dsquare("all.csv",r_1);
  l_1=new Lchart("all.csv",0.5,200,100,700,200);
}

void draw(){
  if(squareActive){
    p_1.display(2,10,40);
    l_1.display(2);
  }else{
    p_1.i=0;
    l_1.i=0;
  }
  
  println(getGroup(1,1,3));
}
void mouseClicked(){
  if(squareActive){
    background(155);
    squareActive=false;
  }else{
    squareActive=true;
  }
}

int getGroup(int gender,int age,int type){
  int index;
  index=(gender*7+age-2)*type;
  return index;
}