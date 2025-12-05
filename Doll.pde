class Doll{
  boolean clawUp1=false;
  boolean clawUp2=false;
  boolean firstTime=true;
  int doll=0;
  int count=0;
  int count1=0;
  int speed=5;
  Claw clone2;
  Doll(Claw c) {
    clone2=c;
  }
 //This function moves doll
  void getDoll(){
    if (clone2.clawPosition1.x >=-12 && clone2.clawPosition1.x<35&&doll!=2){    //lift doll 1 
      if(dollI.y>54){
        dollI.y-=14;
        doll=1;
      }else{        //set condition for moving photo to drop place
          clawUp1=true; 
      }
      
    }else if(clone2.clawPosition1.x>=190 && clone2.clawPosition1.x<=255 && doll!=1){ //lift doll 2   
      if(dollII.y>120){
        dollII.y-=14;
        doll=2;
      }else{        //set condition for moving photo to drop place
        if(count==7){    //add a delay effect to doll2
          clawUp2=true;
          count=0;
        }
        count+=1;
      }
    }
  }
   //This function shift doll left
   void dollShift(){
    if(clawUp1||dollI.y==42){    //horizontal shift doll1
      if (firstTime){
        if(count==7){    //add a delay effect to doll1
          count=0;
          firstTime=false;
        }
        count+=1;
      }else{
        dollI.x-=13.5;
      }
    }
    
    if(clawUp2){    //horizontal shift doll2
      dollII.x-=13.5;
    }
    if(dollI.x<-120.5 ){    
      clawUp1=false;
    }
  }
  //This function sets the condition for dollWin
  void dollWin(){
    if(dollII.x<17.5){
      winning=true;
    }else if(dollI.x<-40){
      winning=true;
    }
  }
      
 
  
 
  
}
