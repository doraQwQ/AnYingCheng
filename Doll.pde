class Doll{
  boolean clawUp1=false;
  boolean clawUp2=false;
  int doll=0;
  int count=0;
  Claw clone2;
  Doll(Claw c) {
    clone2=c;
  }
  
  void getDoll(){
    
    if (clone2.clawPosition1.x >=-12 && clone2.clawPosition1.x<=31&&doll!=2){    //lift doll 1 
      if(dollI.y>54){
        dollI.y-=14;
        doll=1;
      }else{        //set condition for moving photo to drop place
        if(count==7){    //add a delay effect to doll1
          clawUp1=true;
        }
        count+=1;
      }
      
    }else if(clone2.clawPosition1.x>=190 && clone2.clawPosition1.x<=255&&doll!=1){ //lift doll 2   
      if(dollII.y>120){
        dollII.y-=14;
        doll=2;
      }else{        //set condition for moving photo to drop place
        if(count==7){    //add a delay effect to doll2
          clawUp2=true;
        }
        count+=1;
      }
    }
    if(clawUp1){    //horizontal shift doll1
      dollI.x-=13.5;
    }
    if(clawUp2){    //horizontal shift doll2
      dollII.x-=13.5;
    }
    if(dollI.x>-115 &&dollI.x<-145){
      println("ayyy");
    }
      //if(dollI.x>273){
      //  dollI.x-=5;
        
      //}else{
      //   clawUp=true; 
      //}
    //}else if(clone2.clawPosition1.x>=190 && clone2.clawPosition1.x<=255){ //player get doll 2
    //  dollII.x-=5;
    //}
  }
  
}
