class WinLose{
  //this function checks the winning condition
  void whin(){
    if(winning){
      if(anCount<30){
        pushMatrix();
        scale(0.3,0.3);
        image(win,280,200);
        popMatrix();
        anCount++;
      }
      if(anCount>=30){
        if(dollII.x!=1300&&dollII.y!=1390){
           dollII.x=5000;
           clone3.doll=0;
           gone+=1;
        }
        if(dollI.x!=1300&&dollI.y==42){
           dollI.x=8000;
           clone3.doll=0;
           gone+=1;
        }
        anCount=0;
        winning=false;
      }
    }
    if(!winning&&!losing){
      anCount=0;
    }
  }
}
