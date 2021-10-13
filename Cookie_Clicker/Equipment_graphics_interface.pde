void Visual(){
  while(G<Equip && G<10){
    image(mini,((width/2)+6)+(G*32),(TopGap+5)+(123*(ButtNum-1)),32,32);
    G=G+1;
  }
  
  while(G<Equip && G>=10 && G<20){
    image(mini,((width/2)+6)+(G*32)-320,(TopGap+5)+(123*(ButtNum-1)+40),32,32);
    G=G+1;
  }
  
  while(G<Equip && G>=20 && G<30){
    image(mini,((width/2)+6)+(G*32)-640,(TopGap+5)+(123*(ButtNum-1)+80),32,32);
    G=G+1;
  }
}

void Cursors(){
  G=0;
  ButtNum=1;
  mini=loadImage("cursor.png");
  Equip=CursorAmo;
  Visual();
}

void Grandmas(){
  G=0;
  ButtNum=2;
  mini=loadImage("grandma.png");
  Equip=GrandmaAmo;
  Visual();
}

void Farms(){
  G=0;
  ButtNum=3;
  mini=loadImage("farm.png");
  Equip=FarmAmo;
  Visual();
}

void Mines(){
  G=0;
  ButtNum=4;
  mini=loadImage("mine.png");
  Equip=MineAmo;
  Visual();
}

void Factorys(){
  G=0;
  ButtNum=5;
  mini=loadImage("factory.png");
  Equip=FactoryAmo;
  Visual();
}

void Banks(){
  G=0;
  ButtNum=6;
  mini=loadImage("bank.png");
  Equip=BankAmo;
  Visual();
}

void Temples(){
  G=0;
  ButtNum=7;
  mini=loadImage("church.png");
  Equip=TempleAmo;
  Visual();
}
