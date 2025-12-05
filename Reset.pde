class Reset{
  //This function reset dolls once both dolls are clawed
  void reset(){
    
    if(gone==3){
      fill(0);
      text("LOADING",200,200);
      counta+=1;
      if(counta>10){
        dollI.x=650;
        dollI.y=1330;
        dollII.x=1300;
        dollII.y=1390;
        clone3.doll=0;
        clone3.clawUp1=false;
        clone3.clawUp2=false;
        clone3.firstTime=true;
        clone3.count=0;
        clone3.count1=0;
        gone=0;
        counta=0;
        winning=false;
        losing=false;
        
      }
    }
  }
  
}
