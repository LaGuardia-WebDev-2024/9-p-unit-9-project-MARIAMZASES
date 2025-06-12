setup = function() {
    size(400, 400);
};

var answer = 1;


draw = function(){
  background(100,100,100);
  fill(0, 0, 0);
  ellipse(200, 200, 375, 375);
  fill(60, 0, 255);
  triangle(200, 104, 280, 280, 120, 280);
  fill(255, 255, 255);
  
  drawDice(180,350);
  drawEye(200, 200, color(0,0,0));

  
  if(mousePressed){
  fill(random(0,255), random(0,255), random(0,255));
  textSize(40);
    text("???", random(0,600), random(0,400)); 
  }  
  if (answer == 1) {
   
    text("YES", 159, 229); 
  }
  if (answer == 2) {
    text("NO", 176, 200);
    text("WAY", 159, 229); 
  }
  if (answer == 3) {
     text("I'm", 176, 200);
    text("Not SURE ", 159, 229); 
};  
textSize(50);
text("😱", mouseX, mouseY,);
};

mouseClicked = function(){
  answer = round(random(1, 3));
};

 var drawDice = function(diceX, diceY, diceColor){
  textSize(30);
  fill(diceColor);
  text("🎲",diceX, diceY, diceColor);
};

var drawEye = function(eyeX, eyeY, eyeColor){
  fill(eyeColor);
  strokeWeight(1);
  stroke(0,0,0);
  ellipse(eyeX,eyeY,20,20); //iris
  fill(0,0,0);
 
};



