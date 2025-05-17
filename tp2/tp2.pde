PImage inicio; //<>//
PImage diapo1;
PImage dia2;
PImage diapositiva3;
PImage reinicio;


color rosa = color(330, 100, 100);
color gris = color(330, 0, 16);
color grisOscuro = color(330, 0, 5);


color blanco = color(330, 0, 100);
String diapositiva = "pantalla1";
String texto1 = "HypnosisMic A.R.B es un juego de ritmo japones, perteneciente a un proyecto multimedia de King Record";
String texto2 = "Se forman equipos con cartas que tienen diferente niveles y habilidades";
String texto3 = "Tiene mecanica tipo tap, con canciones originales y actualizaciones constantes";


int e;
int tamTexto = 1;
int degrade = 0;
int tiempo = 0;
int segundos = 5000;

float velTexto = 2;
float x = 1;
float limiteX = 293;
float y = 1;
float limiteY = 257;

void setup() {
  size(640, 480);
  background(360);
  colorMode(HSB, 360, 100, 100, 100);
  tiempo = millis();

  inicio = loadImage("Inicio 1.jpeg");
  diapo1 = loadImage("diapo1.jpeg");
  dia2 = loadImage("dia2.jpeg");
  diapositiva3 = loadImage("diapositiva3.jpeg");
  reinicio = loadImage("reinicio.jpeg");

  textAlign(CENTER);

  e = 1;
}

void draw() {
  println( mouseX + "/" + mouseY);
  println( e );
  println( int(frameCount/60) );

  //------------------------------------ PANTALLA INICIO

  image(inicio, 0, 0);
  if ( tamTexto <= 50) {
    tamTexto = tamTexto + 1;
  }
  textSize( tamTexto );
  fill( 330, 0, 16 );
  text("Hypnosis Mic", 310, 390);
  text("A.R.B", 317, 426);

  //------------------------------------ PANTALLA 2

  if ( e == 2 ) {
    image(diapo1, 0, 0);
    fill(330, 0, 0);
    noStroke();
    rect(33, 18, 279, 200 );
    fill(330, 0, 5);
    stroke(blanco);
    strokeWeight(2);
    rect(40, 25, 279, 200);
    fill(blanco);
    rect(215, 10, 80, 15);
    triangle(215, 11, 215, 25, 203, 25);
    fill(330, 0, 16);
    noStroke();
    rect(33+15, 18+15, 279-15, 200-15);
    if (degrade<100) {
      degrade += 2;
    }
    fill(330, 0, 100, degrade);
    textSize(25);
    text( texto1, 33+20, 18+20, 255, 215);
  } else if ( e == 3 ) {    //------------------------------------ PANTALLA 3
    image(dia2, 0, 0);
    fill(330, 0, 0);
    noStroke();
    rect(33+240, 18, 279, 200 );

    fill(330, 0, 5);
    stroke(blanco);
    strokeWeight(2);
    rect(40+240, 25, 279, 200);

    fill(blanco);
    rect(215+240, 10, 80, 15);
    triangle(215+240, 11, 215+240, 25, 203+240, 25);

    fill(330, 0, 16);
    noStroke();
    rect(33+255, 18+15, 279-15, 200-15);

    if ( x < limiteX) {
      x += velTexto;
    }
    fill(330, 0, 100, degrade);
    textSize(25);
    text( texto2, x, 18+20, 255, 215);
  } else if ( e == 4 ) {   //------------------------------------ PANTALLA 4
    image(diapositiva3, 0, 0);

    fill(330, 0, 0);
    noStroke();
    rect(33, 18+220, 279, 200 );

    fill(330, 0, 5);
    stroke(blanco);
    strokeWeight(2);
    rect(40, 25+220, 279, 200);

    fill(blanco);
    rect(215, 10+220, 80, 15);
    triangle(215, 11+220, 215, 25+220, 203, 25+220);

    fill(330, 0, 16);
    noStroke();
    rect(33+15, 18+235, 279-15, 200-15);

    if ( y < limiteY) {
      y += velTexto;
    }
    fill(330, 0, 100, degrade);
    textSize(25);
    text( texto3, 43, y, 255, 215);
  } else if ( e == 5 ) {   //------------------------------------ REINICIO
    image(reinicio, 0, 0);
    fill(330, 0, 100);
    textSize(20);
    text("Reiniciar", 397, 377);
    fill(330, 100, 100);
    text("Cancelar", 237, 377);
    textSize(30);
    fill(330, 0, 100);
    text("La presentacion ha finalizado", 310, 200);
    text("¿desea verla de nuevo?", 310, 250);
  }

  if (millis() - tiempo >= segundos && e < 5) {
    e++;
    tiempo = millis();
  }
}

void mousePressed() {
  if ( e == 5 && mousePressed && mouseX > 330 && mouseX < 464 &&  mouseY > 351 && mouseY < 387) {
    e = 0;
    tiempo = millis();
    e = 1;
    tiempo = millis();
    tamTexto = 1;
    degrade = 0;
    x = 1;
    y = 1;
  }
}

void keyPressed() {
  if (keyCode==LEFT) {
    e--;
  }
  if (keyCode==RIGHT) {
    e++;
  }
}
