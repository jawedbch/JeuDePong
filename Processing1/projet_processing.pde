float x, y, vitesseX, vitesseY;
float rectSize = 200;
float aColor;
float aColor2 = 0;
int score = 0;

void setup() {
  
  size(1000,700);
  
}

void reset() {
 score = 0;
  x = width/2;
  y = height/2 - height/2 +150;
  vitesseX = random(-6, 6);
  vitesseY = random(1, 4);
}

void draw() { 
  
  background(aColor);
  fill(aColor2, aColor2, aColor2, aColor2);
  ellipse(x, y, 15, 15);
  fill(0);
  rect(0, 0, width, 20);
  rect(mouseX-rectSize/2, height-30, rectSize, 10);
  textAlign(LEFT);
  text("score =" +score, 100, 100);
  textAlign(RIGHT);
  
 

  x = x + vitesseX;
  y = y + vitesseY;


 if ( x > width - 10 || x < 5 ) {
    vitesseX = vitesseX * -1;

 }

  // si la balle touche le mur haut, on change la direction de y vers le bas
   if (y < 25) {
    vitesseX = vitesseX * 1.5;
    vitesseY = vitesseY * -1.05;
    y = y + vitesseY;
    aColor = random(50, 255);
    score++;
  }
   
  // si la balle touche le mur haut, on change la direction de y vers le bas
  
  if ( x > mouseX-rectSize/2 && x < mouseX+rectSize/2 && y > height -30 && y < height - 20 ) {

    vitesseY = vitesseY * -1;
    aColor2 = random(0, 255);
  } 
  
  if(y > height){  
    
    text("Haha tu as perdu",width/2 -50,height/2);
    
  }
  
}
  // On clic sur la souris pour rejouer une partie
void mousePressed() {
  reset();
}
