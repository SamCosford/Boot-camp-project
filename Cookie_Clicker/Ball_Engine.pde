class Ball {
  PVector position;    // Position of the ball.
  PVector velocity;    // Amount it moves on each redraw.
  float radius;        // Radius of ball.
  color colour;        // Colour of ball.
  
  Ball(){
    position = new PVector(random(0,width/2-5),random(0,height-5));
    velocity = new PVector(random(-2,2),random(-2,2));
    radius = 15;
    colour   = color(#6E5941);
  }
  
  void draw(){
      // Draw the ball.
  noStroke();
  fill(colour);
  circle(position.x,position.y,radius*2);
  }
  
  void move(){
      // Update the ball position according to the velocity values.
    position.x = position.x + velocity.x;
    position.y = position.y + velocity.y;
    colour=color(#6E5941);
   
    if (position.x - radius < 0 && velocity.x < 0){
      // Escaping to the left, start moving right.
      velocity.x = -1*velocity.x;
    }
    else if (position.x + radius > (width/2)-5 && velocity.x > 0){
      // Escaping to the right, start moving left.
      velocity.x = -1*velocity.x;
    }
   
    if (position.y - radius < 0 && velocity.y < 0){
      // Escaping upwards, start moving down.
      velocity.y = -1*velocity.y;
    }
    else if (position.y + radius > height && velocity.y > 0){
      // Escaping downwards, start moving up.
      velocity.y = -1*velocity.y;
    }
  }
}
