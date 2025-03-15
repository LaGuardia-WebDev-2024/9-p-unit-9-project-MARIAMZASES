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
  
  if(mousePressed){
  fill(255,0,0);
  textSize(40);
    text("🎲", random(0,600), random(0,400)); 
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
  text("🎲", diceX, diceY, diceColor);
};

