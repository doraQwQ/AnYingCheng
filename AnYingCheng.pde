//Cheng An Ying
//This is a claw machine game, player can use 
//a,d to move claw, and space to claw dolls.
//2025-12-3
PImage bg, claw1, claw2,doll1,doll2;
int claw1X=-300;
int claw1Y=-70;
int accleration=1;
int counter=0;
boolean lock=false;
boolean bottom=true;
int timer=0;
int x=0;
PVector dollI = new PVector(650,1330);
PVector dollII= new PVector(1300,1390);
Claw clone= new Claw();
Doll clone3 = new Doll(clone);
void setup() {
  size(400, 400);
  bg = loadImage("bg.jpg");
  claw1 = loadImage("claw1.png");
  claw2 = loadImage("claw2.png");
  doll1 = loadImage("doll1.png");
  doll2 = loadImage("doll2.png");
  rectMode(CORNERS);
  
}
//detection for doll
//  rect(150,300,260,400);
//  rect(270,300,400,400);

/*starting position for claw -300,-70*/

//void draw(){
//  scale(0.2,0.2);
//    image(doll1,650,x);
//    x-=5;
//}
void draw() {
  
  
  pushMatrix();
    scale(0.37, 0.37);
    image(bg, 0, 0);
  popMatrix();
  pushMatrix();
    scale(0.2,0.2);
    image(doll1,dollI.x,dollI.y);
    
  popMatrix();
   fill(0);
  pushMatrix();
    scale(0.2,0.2);
    image(doll2,dollII.x,dollII.y);
    scale(1,1);
    quad(600,1500,700,1400,700,1860,600,2200);
    rect(0,1500,600,2050);
    textSize(45);
    fill(255);
    text("ONLY SmArT PeOpLe CaN SeE\nThE InViSiBlE LiNe oN ClAw!!!\n\nPress A,D to move & space as\nwell!\n\n\nHave FUN!!!   :D",
    10,1570);
  popMatrix();
  clone.contrain();
  clone.clawDraw();
  if(dollI.y!=1330){
    x++;
  }
  if(lock){
    clone.clawDrop();
  }
  if(clone.clawed){    //when claw is at bottom
    if(bottom){          ///have a delay effect
      timer+=1;
      if(timer==40){
        bottom=false;
        timer=0;
      }
    }else{ 
      clone.clawBack();
      clone3.getDoll();
      clone3.dollShift();
      clone3.dollDrop();
      
 
    }
    
  }
}
//This funcition reset the speed as the user holds down button
void resetSpeed(){
  if(counter==5 && accleration<=5){    //reset the speeding
      accleration+=1;
      counter=0;  
  }
}
// This function detects user key presses
void keyPressed(){
  if(key=='a'){
    if(!lock){    //prevent user from pressing when dropping claw
      resetSpeed();
      clone.clawPosition1.x=clone.clawPosition1.x-accleration;
      //clone.x-=accleration;
   
      counter+=1;
    }
  }
  if(key=='d'){
    if(!lock){    //prevent user from pressing when dropping claw
      resetSpeed();
      clone.clawPosition1.x=clone.clawPosition1.x+accleration;
      //clone.x+=accleration;
     
      counter+=1;
    }
  }
  if(key==' '){
    lock=true;
    clone.clawDrop(); 
  }
  
  if(key=='q'){
     println(x);
  }

   //println("x="+dollI.x);
   //println("y="+dollI.y);
   //println(clone3.clawUp1);
   //println(clone3.dollDrop1);
   //println("x="+dollII.x);
   //println("y="+dollII.y);

  
  
}
//This function ensure user key releases
void keyReleased(){
  if(key=='a'){
    accleration=1;
    counter=0;
  }
  if(key=='d'){
    accleration=1;
    counter=0;
  }
  if(key==' '){
   accleration=1;
   counter=0;
  }
  
}
