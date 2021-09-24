int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

void setup()
{
  size(300,300);
  background(100,100,100);
}
void draw()
{
  strokeWeight(3);
  //cloud
  stroke(255,255,255);
  fill(255,255,255);
  ellipse(125,0,75,75);
  ellipse(175,0,75,75);
  ellipse(75,-20,75,75);
  ellipse(225,-20,75,75);
  //lightning
  float b = (int)(Math.random()*65)+190;
  stroke(145,b,242);
  while(endY<300) {
    endX = startX + (((int)(Math.random()*19))-9);
    endY = startY + (int)(Math.random()*10);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  //peppa's home
  strokeWeight(1);
    //layout
  stroke(210, 180, 140);
  fill(241,235,156);
  rect(125,225,75,75);
  rect(110,225,15,75);
  triangle(162.5,190,125.5,225,200,225);
    //door
  fill(255,243,109);
  rect(112.5,270,10,30);
    //window1
  stroke(255);
  fill(173, 216, 230);
  rect(112.5,230,10,15);
  line(117.5,230,117.5,245);
  line(112.5,237.5,122.5, 237.5);
    //window2
  rect(140,230,10,15);
  line(145,230,145,245);
  line(150,237.5,140,237.5);
    //window3
  rect(175,230,10,15);
  line(180,230,180,245);
  line(175,237.5,185,237.5);
    //window4
  rect(140,265,10,15);
  line(145,265,145,280);
  line(150,272.5,140,272.5);
    //window5
  rect(175,265,10,15);
  line(180,265,180,280);
  line(175,272.5,185, 272.5);
  
}
void mousePressed()
{
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
}
