/*
If player a presses “d”, set a_x_speed to 15
If player a presses “s”, set a_y_speed to 15
If player a presses “a”, set a_x_speed to -15
If player a presses “w”, set a_y_speed to -15

If player b presses “k”, set b_x_speed to 15
If player b presses “j”, set b_y_speed to 15
If player b presses “h”, set b_x_speed to -15
If player b presses “u”, set b_y_speed to -15

If player a releases “d”, set a_x_speed to 0
If player a releases “s”, set a_y_speed to 0
If player a releases “a”, set a_x_speed to 0
If player a releases “w”, set a_y_speed to 0

If player b releases “l”, set b_x_speed to 0
If player b releases “k”, set b_y_speed to 0
If player b releases “j”, set b_x_speed to 0
If player b releases “i”, set b_y_speed to 0

change a_x_position by a_x_speed
change a_y_position by a_y_speed
change b_x_position by b_x_speed
change b_y_position by b_y_speed

If a_x_position is less than 0, set a_x_position to width/4 and a_y_position to height/2
If a_x_position is larger than width, set a_x_position to width/4 and a_y_position to height/2
If a_y_position is less than 0, set a_x_position to width/4 and a_y_position to height/2
If a_y_position is larger than height, set a_x_position to width/4 and a_y_position to height/2

If b_x_position is less than 0, set b_x_position to width/4*3 and b_y_position to height/2
If b_x_position is larger than width, set b_x_position to width/4*3 and b_y_position to height/2
If b_y_position is less than 0, set b_x_position to width/4*3 and b_y_position to height/2
If b_y_position is larger than height, set b_x_position to width/4*3 and b_y_position to height/2

The screen is set to white

The fill color is set to black
The stroke is disabled
A circle is drawn at a_x_position and a_y_position with a width of 30 and a height of 30
A circle is drawn at b_x_position and b_y_position with a width of 30 and a height of 30
*/

//set up variables
int a_x_speed = 0;
int a_y_speed = 0;
int a_x_position = -1;
int a_y_position = 0;

int b_x_speed = 0;
int b_y_speed = 0;
int b_x_position = -1;
int b_y_position = 0;

void setup(){
  //begining of game
  size(500,300);
 
}

void keyPressed(){
  //user input
  //If player a presses “d”, set a_x_speed to 15  
  if(key == 'd'){
     a_x_speed = 5;
  }
  if(key == 's'){
     a_y_speed = 5;
  }
  if(key == 'a'){
     a_x_speed = -5;
  }
  if(key == 'w'){
     a_y_speed = -5;
  }
    if(key == 'l'){
     b_x_speed = 5;
  }
  if(key == 'k'){
     b_y_speed = 5;
  }
  if(key == 'j'){
     b_x_speed = -5;
  }
  if(key == 'i'){
     b_y_speed = -5;
  }
}
void keyReleased(){
  //user input
  if(key == 'd'){
     a_x_speed = 0;
  }
  if(key == 's'){
     a_y_speed = 0;
  }
  if(key == 'a'){
     a_x_speed = 0;
  }
  if(key == 'w'){
     a_y_speed = 0;
  }
    if(key == 'l'){
     b_x_speed = 0;
  }
  if(key == 'k'){
     b_y_speed = 0;
  }
  if(key == 'j'){
     b_x_speed = 0;
  }
  if(key == 'i'){
     b_y_speed = 0;
  }
}

void draw(){
  //update game world
  a_y_position += a_y_speed;
  a_x_position += a_x_speed;
  b_y_position += b_y_speed;
  b_x_position += b_x_speed;
  
  if(a_x_position < 0){
    a_x_position = width/4;
    a_y_position = height/2;
  }
  if(a_y_position < 0){
    a_x_position = width/4;
    a_y_position = height/2;
  }
  if(a_x_position > width){
    a_x_position = width/4;
    a_y_position = height/2;
  }
  if(a_y_position > height){
    a_x_position = width/4;
    a_y_position = height/2;
  }
  
  if(b_x_position < 0){
    b_x_position = width/4*3;
    b_y_position = height/2;
  }
  if(b_y_position < 0){
    b_x_position = width/4*3;
    b_y_position = height/2;
  }
  if(b_x_position > width){
    b_x_position = width/4*3;
    b_y_position = height/2;
  }
  if(b_y_position > height){
    b_x_position = width/4*3;
    b_y_position = height/2;
  }
  
  /*
  f a_x_position is less than 0, set a_x_position to width/4 and a_y_position to height/2
If a_x_position is larger than width, set a_x_position to width/4 and a_y_position to height/2
If a_y_position is less than 0, set a_x_position to width/4 and a_y_position to height/2
If a_y_position is larger than height, set a_x_position to width/4 and a_y_position to height/2

If b_x_position is less than 0, set b_x_position to width/4*3 and b_y_position to height/2
If b_x_position is larger than width, set b_x_position to width/4*3 and b_y_position to height/2
If b_y_position is less than 0, set b_x_position to width/4*3 and b_y_position to height/2
If b_y_position is larger than height, set b_x_position to width/4*3 and b_y_position to height/2
  */

  //draw to screen
  background (255);
  fill(255,255,0);
  ellipse(a_x_position,a_y_position,30,30);
   fill(0,0,255);
  ellipse(b_x_position,b_y_position,30,30);
  
}
