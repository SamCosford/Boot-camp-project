//Establishes variables that will be used throughout the code
PImage img,mini,icon;
Float Cookies,CPS;
int ButtNum,i,second, TopGap,Equip,G,Amo,Item,r,Bar;
int CursorAmo,GrandmaAmo,FarmAmo,MineAmo,FactoryAmo,BankAmo,TempleAmo;
int CursorCos,GrandmaCos,FarmCos,MineCos,FactoryCos,BankCos,TempleCos;
int CursorCosO,GrandmaCosO,FarmCosO,MineCosO,FactoryCosO,BankCosO,TempleCosO;
Float CursorCPS,GrandmaCPS,FarmCPS,MineCPS,FactoryCPS,BankCPS,TempleCPS;
boolean Button;
String Label, Desc,Cost, Amount,TopText;
String CursorAmo2,GrandmaAmo2,FarmAmo2,MineAmo2,FactoryAmo2,BankAmo2,TempleAmo2;
Ball[] balls;

void setup(){
  
//i,second, CPS and cookie balance set to zero
  i=0;
  CPS=0.0;
  Cookies=0.0;
  TopGap=115;
  r=0;
  Bar=600;
  
//Sets the amount of user items, CPS and cookies to zero
  CursorAmo=0;
  GrandmaAmo=0;
  FarmAmo=0;
  MineAmo=0;
  FactoryAmo=0;
  BankAmo=0;
  TempleAmo=0;
  
//Sets the values of CPS made for each of the purchasable items
  CursorCPS=0.100;
  GrandmaCPS=1.0;
  FarmCPS=8.0;
  MineCPS=47.0;
  FactoryCPS=260.0;
  BankCPS=1400.0;
  TempleCPS=7800.0;
  
//Sets the cost of each purchasable item
  CursorCosO=15;
  GrandmaCosO=100;
  FarmCosO=1100;
  MineCosO=12000;
  FactoryCosO=130000;
  BankCosO=1400000;
  TempleCosO=20000000;
  
//Sets up the size of the canvas
  size(1820,980);
  
//sets the frame rate
  frameRate(60);
  
//Generates the Balls
  balls=new Ball[50];
  for (int i=0;i<balls.length;i++){
    balls[i]=new Ball();
  }

}

void draw(){
//Calculates the inflates prices of each item
  CursorCos=(CursorCosO*(CursorAmo+1));
  GrandmaCos=(GrandmaCosO*(GrandmaAmo+1));
  FarmCos=(FarmCosO*(FarmAmo+1));
  MineCos=(MineCosO*(MineAmo+1));
  FactoryCos=(FactoryCosO*(FactoryAmo+1));
  BankCos=(BankCosO*(BankAmo+1));
  TempleCos=(TempleCosO*(TempleAmo+1));
  
//Converts the Amo types into Strings for easier displaying
  CursorAmo2=str(CursorAmo);
  GrandmaAmo2=str(GrandmaAmo);
  FarmAmo2=str(FarmAmo);
  MineAmo2=str(MineAmo);
  FactoryAmo2=str(FactoryAmo);
  BankAmo2=str(BankAmo);
  TempleAmo2=str(TempleAmo);
  
//Calculates the CPS
  CPS=(CursorAmo*CursorCPS)+(GrandmaAmo*GrandmaCPS)+(FarmAmo*FarmCPS)+(MineAmo*MineCPS)+(FactoryAmo*FactoryCPS)+(BankAmo*BankCPS)+(TempleAmo*TempleCPS);
  
//Calculates the cookies
  if(second==60){
    Cookies=Cookies+CPS;
    second=0;
  }
  else{
    second=second+1;
  }
  
//resets i
  i=1;
  
//Prints the Cookies to the CMD for debugging
  //println(Cookies);
  
   
//Sets the default colour
  fill(#B8956D);
  
//sets up the background for the game
  background(#16537e);
  
//
  pushMatrix();
  translate(width/4,height/2);
  noStroke();
  fill(#1F6EA7);
  rotate(radians(r));
  quad(10,10,10,-10,1635,-Bar,1635,Bar);
  quad(-10,10,-10,-10,-1635,-Bar,-1635,Bar);
  quad(10,10,-10,10,-Bar,1635,Bar,1635);
  quad(10,-10,-10,-10,-Bar,-1635,Bar,-1635);
  popMatrix();
  r=r+1;

  
//summons the effect 
  fill(#16537e);
  rect(width/2+5,0,455,TopGap);
  rect((width/4)*3+5,0,455,TopGap);
  strokeWeight(10);
  stroke(#372c20);
  line(width/2,0,width/2,height);
  line((width/4)*3,0,(width/4)*3,height);
  
//Draws the balls
  for (int i=0;i<balls.length;i++){
    balls[i].draw();
    balls[i].move();
  }
  
//resets the stroke for the rest of the code
  strokeWeight(1);
  stroke(#000000);
  
//Displays the user's current cookies at the top of the canvas
  fill(#B8956D);

  String Amount = nf(Cookies,0,1);
  textSize(60);
  text(Amount + " Cookies", (width/4)-(textWidth(Amount + " Cookies")/2), 80);
  
  String AmountCPS = nf(CPS,0,1);
  textSize(30);
  text(AmountCPS + " Cookies Per Second", (width/4)-(textWidth(AmountCPS + " Cookies Per Second")/2), 120);

//Displays the titles at the top of the page
  textSize(60);
  text("Buy Some Gear", ((width/8)*7)-(textWidth("Buy Some Gear")/2), 80);  
  
  textSize(60);
  text("Production Line", ((width/8)*5)-(textWidth("Production Line")/2), 80);
  
//Adds Boxes for the production line
  while(i<8){
    fill(#407294);
    rect(((width/2))+5,((TopGap+123*(i-1)+i)),445,123);
    i=i+1;
  }
  
  line((width/2)+322,TopGap,(width/2)+322,height);
  fill(#000000);

//summons the Buttons
  pushMatrix();
  MainButt();
  popMatrix();
  Cursor();
  Grandma();
  Farm();
  Mine();
  Factory();
  Bank();
  Temple();
  
//Summons the item amount displays
  CursorVal();
  GrandmaVal();
  FarmVal();
  MineVal();
  FactoryVal();
  BankVal();
  TempleVal();
  
//Handles the mini images shown in productionLine

  Cursors();
  Grandmas();
  Farms();
  Mines();
  Factorys();
  Banks();
  Temples();
  
}
