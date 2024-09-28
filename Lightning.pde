void setup()
{
  size(500,500);
}
void draw()
{
  background(#D3C7BA);
  noStroke();
  fill(#B39E88);
  rect(100,350,400,500);
  treasureChest();
  int startX = 0;
  int startY = (int)(Math.random()*300)+150;
  int endX = 0;
  int endY = startY;
  while(startX<500){
    stroke(255,0,0);
    strokeWeight(4);
   line(startX,startY,endX,endY);
   startX = endX;
   startY = endY;
  endX = startX+(int)(Math.random()*9)+1;
  endY = startY+(int)(Math.random()*20-10);
  noStroke();
  fill(#6D6D6D);
  rect(0,50,100,500);
  rect(400,50,500,500);
  stroke(0,0,0);
  strokeWeight(1);
  fill(#CA0606);
  ellipse(450,250,50,50);
  }
}
void mousePressed(){
  if(overCircle(450,250,100)){
  looping = !looping;
  noStroke();
  fill(#B39E88);
  rect(100,350,300,400);
  fill(#D3C7BA);
  rect(100,0,300,350);
  stroke(0,0,0);
  fill(#4c7602);
  ellipse(450,250,50,50);
  noStroke();
  treasureChest();
}
}
boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
void treasureChest()
{
  fill(#683F25);
  rect(175,300,150,100);
  rect(197,275,100,50);
  ellipse(200,298,50,45);
  ellipse(300,298,50,45);
  fill(#FFCE2F);
  rect(197,275,10,125);
  rect(292,275,10,125);
  rect(235,310,28,36);
  fill(#37241A);
  rect(175,305,150,5);
  fill(0,0,0);
  ellipse(249,322,10,10);
  triangle(249,316,242,342,256,342);
}
