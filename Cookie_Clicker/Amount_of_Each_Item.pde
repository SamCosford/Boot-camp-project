void Amount(){
  text(TopText,(((width/2)+384)-(textWidth(TopText)/2)),(TopGap+123*(ButtNum-1)+ButtNum)+75);
}

void CursorVal(){
  ButtNum=1;
  TopText=CursorAmo2;
  Amount();
}

void GrandmaVal(){
  ButtNum=2;
  TopText=GrandmaAmo2;
  Amount();
}

void FarmVal(){
  ButtNum=3;
  TopText=FarmAmo2;
  Amount();
}

void MineVal(){
  ButtNum=4;
  TopText=MineAmo2;
  Amount();
}

void FactoryVal(){
  ButtNum=5;
  TopText=FactoryAmo2;
  Amount();
}

void BankVal(){
  ButtNum=6;
  TopText=BankAmo2;
  Amount();
}

void TempleVal(){
  ButtNum=7;
  TopText=TempleAmo2;
  Amount();
}
