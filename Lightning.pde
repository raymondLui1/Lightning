int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int frames = 1;

void setup()
{
  size(300,300);
  background(0, 0, 0);
}

void draw()
{
  frameRate(frames);
  fill(255, 255, 255);
  textSize(15);
  text("FPS is " + frames, 5, 20);
  fill(0, 0, 0, 125);
  stroke(0, 0, 0);
  rect(0, 0, 350, 350);
  stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  if(endY <= 0) {
    strokeWeight((int)(Math.random()*9)+1);
    while(endY <= 300) {
      endX = startX + (int)((Math.random()*10)-5);
      endY = startY + (int)((Math.random()*10));
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
      }
    }
  if(endY >= 300) {
    startY = 0;
    endY = 0;
   }
   if(startX >= 300 || startX <=0) {
        startX = 150;
   }
}

void mousePressed() {
  frames++;
}

