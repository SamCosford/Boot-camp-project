void MainButt(){
//Changes the colour of the main button if the mouse is over it
  if(dist((width/4),(height/2),mouseX,mouseY)<=200){
    translate(width/4,height/2);
    rotate(radians(-r/2));
    translate(-width/4,-height/2);
    fill(#A58662);
    circle(width/4,height/2,400); 
    fill(#362F21);
    quad(500,420,450,370,550,370,600,420);
    quad(400,550,430,580,400,600,370,590);
    quad(600,490,570,540,520,530,500,500);
    quad(320,450,360,370,400,400,360,450);
    quad(440,540,460,550,480,470,430,460);
  }
  
//Sets the defauly colour of the main button when it is not in use
  else{
    translate(width/4,height/2);
    rotate(radians(-r/2));
    translate(-width/4,-height/2);
    fill(#B8956D);
    circle(width/4,height/2,400);
    fill(#443B2A);
    quad(500,420,450,370,550,370,600,420);
    quad(400,550,430,580,400,600,370,590);
    quad(600,490,570,540,520,530,500,500);
    quad(320,450,360,370,400,400,360,450);
    quad(440,540,460,550,480,470,430,460);
  }
}
