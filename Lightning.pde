int startY = 150;
int startX = 0;
int endX = 0;
int endY = 150;
void setup()
{
  size(600,600);
  background(0,0,0);
}
void draw()
{
  stroke(230,230,255);
  while(endX <= 600)
  {
    endX = startX + ((int)(Math.random()*10));
    endY = startY + ((int)((Math.random()*20)-10));
    line(startY,startX,endY,endX);
    startX = endX;
    startY = endY;
  }
  if(endX >= 600)
  {
    hi();
  }
  
}
void mousePressed()
{
  fill(255,255,255,100);
  rect(0,0,600,600);
  startY = ((int)((Math.random()*400)+50));
  startX = 0;
  endY = 150;
  endX = 0;
}

void hi()
{
  stroke(0);
  fill(0,0,0,15);
  rect(-10,-10,610,610);
  endX = endX + 20;
  fill(100);
  noStroke();
  ellipse(50,50,300,200);
  ellipse(250,50,300,200);
  ellipse(450,50,300,200);
  ellipse(650,50,300,200);
  strokeWeight(((int)(Math.random()*5)));
}

