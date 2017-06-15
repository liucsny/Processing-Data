import controlP5.*;
ControlP5 cp5;
DropdownList d1, d2;
PFont myFont;

void setup(){
  size(700, 400);
  background(255);
  smooth();
  cp5 = new ControlP5(this);
  myFont = createFont("方正悠黑简体.TTF", 12);
  
  d1 = cp5.addDropdownList("myList-d1")
        .setPosition(100, 100)
        .setSize(200,200);
        
  //cp5.getController("myList-d1").getControllerPlugList().setFont(myFont); 
  //d1.setBackgroundColor(color(0,255,255));
  
  
  d1.setItemHeight(20);
  String name="item";
  d1.addItem(name, 1);
  cp5.getController("myList-d1").getCaptionLabel().setFont(myFont); 
  d1.setColorBackground(color(0,0,155));
  d1.setColorActive(color(255,0,0));
  d1.setOpen(false);
  d1.setScrollSensitivity(0.01);
  d1.setBarHeight(40); 
  d1.getCaptionLabel().set("性别");
}

void draw() {
  background(255);
}

void controlEvent(ControlEvent theEvent) {
  // DropdownList is of type ControlGroup.
  // A controlEvent will be triggered from inside the ControlGroup class.
  // therefore you need to check the originator of the Event with
  // if (theEvent.isGroup())
  // to avoid an error message thrown by controlP5.

  if (theEvent.isGroup()) {
    // check if the Event was triggered from a ControlGroup
    println("event from group : "+theEvent.getGroup().getValue()+" from "+theEvent.getGroup());
  } 
  else if (theEvent.isController()) {
    println("event from controller : "+theEvent.getController().getValue()+" from "+theEvent.getController());
  }
}