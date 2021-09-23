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
  stroke(210, 180, 140);
  fill(241,235,156);
  rect(125,225,75,75);
  rect(110,225,15,75);
  triangle(162.5,190,125.5,225,200,225);
  fill(255,243,109);
  rect(112.5,270,10,30);
  stroke(255);
  fill(173, 216, 230);
  rect(112.5,230,10,15);
  line(117.5,230,117.5, 245);
  line(112.5,235,117.5, 245);
}
void mousePressed()
{
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
}
