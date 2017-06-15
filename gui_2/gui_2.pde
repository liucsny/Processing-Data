import controlP5.*;
ControlP5 cp5;
DropdownList d1, d2;
PFont myFont;

String text="";

void setup(){
  size(1190, 600);
  background(255);
  smooth();
  
  myFont = createFont("方正悠黑简体.TTF", 12);
  
  //===============
  cp5 = new ControlP5(this); 
  d1 = cp5.addDropdownList("gender")
        .setPosition(100, 100)
        .setSize(57,200);
  //===============
  cp5.getController("gender").getCaptionLabel().setFont(myFont);
  d1.setItemHeight(20);
  d1.setBarHeight(20); 
  d1.getCaptionLabel().set("性别");
  //===============
  
  
}

void draw(){

}