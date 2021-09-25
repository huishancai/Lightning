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
    //roof
  stroke(210,180,140);
  fill(255,179,71);
  beginShape();
  vertex(162.5,190);
  vertex(122.5,225);
  vertex(110,225);
  vertex(147.5,190);
  endShape();
      //vertical lines
  line(150.5,190,113.5,225);
  line(154.5,190,117.5,225);
  line(158.5,190,121.5,225);
      //horizontal lines
  line(162.5,195,140,195);
  line(162.5,200,135,200);
  line(162.5,205,130,205);
  line(162.5,210,125,210);
  line(162.5,215,120,215);
  line(162.5,220,115,220);
    //layout
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
    //antenna
  strokeWeight(0);
  stroke(0);
  line(150,195,150,165);
  line(145,185,155,185);
  line(142.5,180,157.5,180);
  line(140,175,160,175);
}
void mousePressed()
{
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
}
