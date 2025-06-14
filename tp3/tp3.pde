// https://youtu.be/_SG0mOuivPo

PImage optica;

int dhc = 400;
int cant = 8;
int tamCuad = 50;

boolean mostrarColor = false;

color negro = color(0);
color blanco = color(0, 0, 99);
color gris = color(0, 0, 69);


void setup() {
  size(800, 400);
  optica  =  loadImage("M3.jpeg");


  colorMode(HSB, 360, 100, 100, 100);
  background(0, 0, 99);
}

void draw() {
  background(0, 0, 69);
  
  image( optica, 0,0);
  

  println( mouseX + "/" + mouseY);

  stroke(5);
  fill(negro);
  line(dhc, dhc, dhc, 0);

  if(mostrarColor){
    colorA();
  }else{
    cuadrados(0,0);
  }
  
  optica = loadImage("M3.jpeg");
  
}

void mouseMoved() {
  strokeWeight(1);
  stroke(255, 0, 0);
  line(mouseX, 0, mouseX, 400);
  line(0, mouseY, 800, mouseY);
}

 void mouseReleased() {
  if (mitad()) {
    mostrarColor = true;
  } else {
    mostrarColor = false;
  }
}

void   keyReleased(){
  if( key == ' ' )
    mostrarColor = false;
  
}
