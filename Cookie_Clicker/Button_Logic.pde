void mouseClicked(){
  
//The function that allows the Main Button to add to the cookies
  if(dist((width/4),(height/2),mouseX,mouseY)<=200){
    Cookies=Cookies+1;

  }
 
// logic to for the equipment buttons
  ButtNum=1;
  if((mouseX>=((width/4)*3)+5)&&(mouseX<=width)&&(mouseY>=(119+(123*(ButtNum-1)+ButtNum)))&&(mouseY<=(119+(123*ButtNum)+ButtNum))&&(Cookies>=CursorCos)){
    CursorAmo=CursorAmo+1;
    Cookies=Cookies-CursorCos;
  }
  
  ButtNum=2;
  if((mouseX>=((width/4)*3)+5)&&(mouseX<=width)&&(mouseY>=(TopGap+(123*(ButtNum-1)+ButtNum)))&&(mouseY<=(TopGap+(123*ButtNum)+ButtNum))&&(Cookies>=GrandmaCos)){
    GrandmaAmo=GrandmaAmo+1;
    Cookies=Cookies-GrandmaCos;
  }
  
  ButtNum=3;
  if((mouseX>=((width/4)*3)+5)&&(mouseX<=width)&&(mouseY>=(TopGap+(123*(ButtNum-1)+ButtNum)))&&(mouseY<=(TopGap+(123*ButtNum)+ButtNum))&&(Cookies>=FarmCos)){
    FarmAmo=FarmAmo+1;
    Cookies=Cookies-FarmCos;
  }
  
  ButtNum=4;
  if((mouseX>=((width/4)*3)+5)&&(mouseX<=width)&&(mouseY>=(TopGap+(123*(ButtNum-1)+ButtNum)))&&(mouseY<=(TopGap+(123*ButtNum)+ButtNum))&&(Cookies>=MineCos)){
    MineAmo=MineAmo+1;
    Cookies=Cookies-MineCos;
  }
  
  ButtNum=5;
  if((mouseX>=((width/4)*3)+5)&&(mouseX<=width)&&(mouseY>=(TopGap+(123*(ButtNum-1)+ButtNum)))&&(mouseY<=(TopGap+(123*ButtNum)+ButtNum))&&(Cookies>=FactoryCos)){
    FactoryAmo=FactoryAmo+1;
    Cookies=Cookies-FactoryCos;
  }
  
  ButtNum=6;
  if((mouseX>=((width/4)*3)+5)&&(mouseX<=width)&&(mouseY>=(TopGap+(123*(ButtNum-1)+ButtNum)))&&(mouseY<=(TopGap+(123*ButtNum)+ButtNum))&&(Cookies>=BankCos)){
    BankAmo=BankAmo+1;
    Cookies=Cookies-BankCos;
  }
  
  ButtNum=7;
  if((mouseX>=((width/4)*3)+5)&&(mouseX<=width)&&(mouseY>=(TopGap+(123*(ButtNum-1)+ButtNum)))&&(mouseY<=(TopGap+(123*ButtNum)+ButtNum))&&(Cookies>=TempleCos)){
    TempleAmo=TempleAmo+1;
    Cookies=Cookies-TempleCos;
  }
  
  fill(#ffffff);
  text("CLICK",mouseX,mouseY);
}
