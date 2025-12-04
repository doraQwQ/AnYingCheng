class Claw{
  PVector clawPosition1= new PVector(-300,-70);
  PVector clawPosition2= new PVector(-300,-70);
  boolean clawed=false;
  int count=0;
  int accleration=0;
 
  //This function ensures the number are not over;
  void contrain(){
    clawPosition1.y=constrain(clawPosition1.y,-70,388);
    clawPosition1.x=constrain(clawPosition1.x,-316,286);
  }
   //This function draw claw based on coordinates
  void clawDraw(){
    pushMatrix();
    scale(0.555,0.555);
    if (!clawed){  //hasn't press space 
      image(claw1,clawPosition1.x,clawPosition1.y); 

    }else {        //pressed space
      image(claw2,clawPosition1.x,clawPosition1.y); 
    }
    popMatrix();
  }
  
  //This function drops claw with acclerated speed
  //until claw reach bottom
  void clawDrop(){
    if(clawPosition1.y<388){
      count+=1;
      if(count==5 && accleration<5){
        accleration+=1;
        count=0;
      }
      clawPosition1.y+=accleration;
    }else{      //the claw reach bottom, reset values
      accleration=0;
      clawed=true;
      count=0;
    }
  }
  //This function lifts and return
  //claw to start place
  void clawBack(){
    if(clawed && count<195){    //claw is at bottom      
      clawPosition1.y-=5;
      count+=1;
    }else{
      if(clawPosition1.x!=-273){
        if(clawPosition1.x>-273 && (clawPosition1.x+273)<5){    //when claw is close, snap to right place
          clawPosition1.x-=clawPosition1.x+273;
        }else if(clawPosition1.x>-273){
          clawPosition1.x-=5;
        }        
        if(clawPosition1.x<-273 && (clawPosition1.x+5>273)){
          clawPosition1.x+=clawPosition1.x+273;
        }else if(clawPosition1.x<-273){
          clawPosition1.x+=5;
        }
      }else{
        clawed=false;
        lock=false;
        first=true;
        count=0;
      }
    }
  }
}
