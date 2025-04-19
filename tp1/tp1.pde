PImage photo; 
  
  void setup(){
   size(800, 400); 
   background(255);
   colorMode(HSB,360,100,100,100);
   photo = loadImage("Gato.png");
}
void draw(){
  background(212,9,88);
  image(photo, 0, 0);
  println( mouseX + "/" + mouseY);
  
  strokeWeight(5);
  line(400, 400, 400, 0); 
  
  //mesa
  strokeWeight(0);
  fill(28,50,65);
  quad(77+400,225,400+400,218,400+400,400,3+400,399); 
  strokeWeight(3);
  stroke(14,36,42);
  fill(14,36,42);
  quad(77+400,225, 87+400,225, 4+400,398, 0+400,356);
  strokeWeight(3);
  stroke(14,36,42);
  line(77+400,225, 400+400,218);
 
  
  //orejas
  strokeWeight(0);
  fill(24,13,86); //color de las orejas
  triangle(103+400,133, 147+400,135, 117+400,173); //oreja derecha
  triangle(235+400,84, 255+400,125, 205+400,117); //oreja izqquierda
  fill(24,25,79);
  triangle(231+400,99, 240+400,118, 218+400,114); 
  triangle(115+400,142, 139+400,144, 122+400,160);
  
  //sombra
  fill(9,22,32);
  ellipse(221+400 ,288, 200, 82);
  
  //base del gato
  fill(202,9,96); //color de la base del gato
  circle(209+400,217, 205); strokeWeight(1); //base del gato
  
  //cola del gato
  strokeWeight(0);
  fill(24,13,86);
  bezier(308+400,203, 328+400,221, 334+400,250, 267+400,290);
  
  //nariz
  fill(2,0,0); //color de la nariz
  triangle(172+400,153,193+400,144,188+400,158); //nariz
  
  //ojos
  strokeWeight(3); //grosor de los ojos
  point(168+400,141); //ojo derecho
  point(190+400,133); //ojo izquierdo
  
  //bigotes
  strokeWeight(1); //grosor bigote
  line(170+400,155,143+400,157); //bigote arriba derecho
  line(167+400,161,124+400,182); //bigote medio derecho
  line(169+400,165,151+400,183); //bigote abajo derecho
  line(196+400, 142, 214+400,130); //bigote arriba izquierdo
  line(202+400,145,241+400,133); //bigote medio izquierdo
  line(205+400,151,236+400,150); //bigote abajo izquierdo
  
  //boca del gato
  line(188+400,158,197+400,184);
  noFill();
  bezier(197+400,184,192+400,195,181+400,199,170+400,195);
  bezier(197+400,184,209+400,188,222+400,180,222+400,172);
}

void mouseMoved(){
  strokeWeight(1);
 line(mouseX, 0, mouseX,400);
 line(0, mouseY, 800, mouseY);
}
