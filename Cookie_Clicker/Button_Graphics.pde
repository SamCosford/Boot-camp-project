void Button(){
//Highlights the button when it is selected
  if((mouseX>=((width/4)*3)+5)&&(mouseX<=width)&&(mouseY>=(TopGap+(123*(ButtNum-1)+ButtNum)))&&(mouseY<=(TopGap+(123*ButtNum)+ButtNum))){   
    fill(#999999);
    rect(((width/4)*3)+5,((TopGap+123*(ButtNum-1)+ButtNum)),455,123);
    fill(#000000);
//Adds the Label to the button
    textSize(40);
    text(Label,(((width/4)*3)+20),((TopGap+123*(ButtNum-1)+ButtNum))+40);
    
//Adds the description of each item to the button    
    textSize(20);
    text(Desc,(((width/4)*3)+20),((TopGap+123*(ButtNum-1)+ButtNum))+60);
    
//adds the cost of each item to the button
    textSize(40);
    text(Cost,(((width/4)*3)+20),((TopGap+123*(ButtNum-1)+ButtNum))+115);
    
//adds the icon to the button    
    image(img,((width/4)*3)+340,(TopGap+(123*(ButtNum-1)+ButtNum)),120,120);
  }
  
  else{
//generates the button when it is not being hovered over
    fill(#bcbcbc);
    rect(((width/4)*3)+5,(TopGap+(123*(ButtNum-1)+ButtNum)),455,123);
    fill(#000000);
//Adds the Label to the button
    textSize(40);
    text(Label,(((width/4)*3)+20),((TopGap+123*(ButtNum-1)+ButtNum))+40);

//Adds the description of each item to the button
    textSize(20);
    text(Desc,(((width/4)*3)+20),((TopGap+123*(ButtNum-1)+ButtNum))+60);

//adds the cost of each item to the button
    textSize(40);
    text(Cost,(((width/4)*3)+20),((TopGap+123*(ButtNum-1)+ButtNum))+115);
  
//adds the icon to the button    
    image(img,((width/4)*3)+340,(TopGap+(123*(ButtNum-1)+ButtNum)),120,120);
    
  }
}

void Cursor(){
  ButtNum=1;
  Label="Cursor (0.1 CPS)";
  img = loadImage("cursor.png");
  Desc="Auto-clicks on the cookie";
  Cost=str(CursorCos)+" C";
  Button();
}

void Grandma(){
  ButtNum=2;
  Label="Grandma (1 CPS)";
  img = loadImage("grandma.png");
  Desc="A nice grandma to bake more cookies";
  Cost=str(GrandmaCos)+" C";
  Button();
}

void Farm(){
  ButtNum=3;
  Label="Farm(8 CPS)";
  img = loadImage("farm.png");
  Desc="Grows cookies from cookie seeds";
  Cost=str(FarmCos)+" C";
  Button();
}

void Mine(){
  ButtNum=4;
  Label="Mine (47CPS)";
  img = loadImage("mine.png");
  Desc="Mines out cookie dough";
  Cost=str(MineCos)+" C";
  Button();
}

void Factory(){
  ButtNum=5;
  Label="Factory (260 CPS)";
  img = loadImage("factory.png");
  Desc="Mass produces cookies";
  Cost=str(FactoryCos)+" C";
  Button();
}

void Bank(){
  ButtNum=6;
  Label="Bank (1,400 CPS)";
  img = loadImage("bank.png");
  Desc="Generates cookies from interest";
  Cost=str(BankCos)+" C";
  Button();
}

void Temple(){
  ButtNum=7;
  Label="Temple (7,800 CPS)";
  img = loadImage("church.png");
  Desc="Full of ancient cookie recipes";
  Cost=str(TempleCos)+" C";
  Button();
}
