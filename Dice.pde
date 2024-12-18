Die sq;
int dieTotal = 0;

void setup() {
  noLoop();
  size(600, 600);
  background(#CBC14A);
  textAlign(CENTER);
  rectMode(CENTER);

}

void draw() {
  for(int y = 100 ; y < 501  ; y = y + 100) {
    for(int x = 100 ; x < 501 ; x = x + 100){
    Die sq = new Die(x, y);
    sq.roll();
    sq.show();
    if ( sq.rolled == 1){
      dieTotal = dieTotal + 1;
    }else if (sq.rolled == 2){
      dieTotal = dieTotal + 2;
    }else if (sq.rolled == 3){
      dieTotal = dieTotal + 3;
    }else if (sq.rolled == 4){
      dieTotal = dieTotal + 4;
    }else if (sq.rolled == 5){
      dieTotal = dieTotal + 5;
    }else if (sq.rolled == 6){
      dieTotal = dieTotal + 6;
    }
}
}
     //noStroke();
     fill(#030200);
     rect(300,25,150,35);
     fill(255);
     textSize(30);
     text("Total = "+ dieTotal,300,35);
     dieTotal = 0;
}

void mousePressed() {
  redraw();
}

class Die {
  int rolled;
  int myX, myY;

  Die(int x, int y) {
    rolled = 1;
    myX = x;
    myY = y;
  }
  
  void roll() {

    rolled = (int)(Math.random()*6)+1 ;
  }
  
  void show() {
    fill(255);
    rect(myX, myY, 90, 90);
    fill(0);
    if (rolled == 1) {
      ellipse(myX, myY, 15, 15);
    } else if (rolled ==2) {
      ellipse(myX - 20, myY + 20, 15, 15);
      ellipse(myX + 20, myY - 20, 15, 15);
    } else if (rolled == 3) {
      ellipse(myX - 20, myY + 20, 15, 15);
      ellipse(myX + 20, myY - 20, 15, 15);
      ellipse(myX, myY, 15, 15);
    } else if (rolled == 4) {
      ellipse(myX - 20, myY + 20, 15, 15);
      ellipse(myX + 20, myY - 20, 15, 15);
      ellipse(myX - 20, myY - 20, 15, 15);
      ellipse(myX + 20, myY + 20, 15, 15);
    } else if (rolled == 5) {
      ellipse(myX - 20, myY + 20, 15, 15);
      ellipse(myX + 20, myY - 20, 15, 15);
      ellipse(myX - 20, myY - 20, 15, 15);
      ellipse(myX + 20, myY + 20, 15, 15);
      ellipse(myX, myY, 15, 15);
    } else { 
      ellipse(myX - 20, myY + 20, 15, 15);
      ellipse(myX + 20, myY - 20, 15, 15);
      ellipse(myX - 20, myY - 20, 15, 15);
      ellipse(myX + 20, myY + 20, 15, 15);
      ellipse(myX - 20, myY, 15, 15);
      ellipse(myX + 20, myY, 15, 15);
    }
  }
}
