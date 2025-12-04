class Doll{
  boolean clawUp1=false;
  boolean clawUp2=false;
  boolean dollDrop1=false;
  int doll=0;
  int count=0;
  int count1=0;
  int speed=5;
  Claw clone2;
  Doll(Claw c) {
    clone2=c;
  }
 
  void getDoll(){
    
    if (clone2.clawPosition1.x >=-12 && clone2.clawPosition1.x<35&&doll!=2){    //lift doll 1 
      if(dollI.y>54){
        dollI.y-=14;
        doll=1;
      }else{        //set condition for moving photo to drop place
        if(count==7){    //add a delay effect to doll1
          clawUp1=true;
          count=0;
        }
        count+=1;
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
    if(clawUp1){    //horizontal shift doll1
      dollI.x-=13.5;
    }
    if(clawUp2){    //horizontal shift doll2
      dollII.x-=13.5;
    }
    if(dollI.x<-120.5 ){    
      clawUp1=false;
      dollDrop1=true;
    }
  }
  //This function drops doll to the hole
  void dollDrop(){
    if(x>164){
      dollI.y+=1;
    }
      if(dollI.y<700){  //if the doll1 is higher than the canvas
        
        if(count1==5){
          speed+=1; 
          count1=0;
        }
        count1++;
      }
      
    
    if(dollDrop1){ //doll1 on top of the drop place
      dollI.y+=speed;
      println(dollI.y);
      //if(dollI.y<700){  //if the doll1 is higher than the canvas
      //  dollI.y+=speed;
      //  if(count1==5){
      //    speed+=1; 
      //    count1=0;
      //  }
      //  count1++;
      //}
    }else{            //doll1 not in screen
      //dollDrop1=false;
      doll=0;
      count1=0;
    }
 }
  
 
  
}
