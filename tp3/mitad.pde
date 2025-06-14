boolean mitad(){
  return mouseX > width/2;
}

void colorA(){
  push();
  translate(dhc, 0);
  
  for (int x = 0; x < cant; x++) {
    for (int y = 0; y < cant; y++) {

      int xc = x * tamCuad;
      int yf = y * tamCuad;
      
      if ( (x+y)%2==0 ) {
        fill(0, 0, 69);
      } else {
        fill(noise(x*2+y*3)*255, 255, 255 );
      }
      //busco la coordenada:
      float mod = 400/cant;
      float i = x*mod+mod/2;
      float j = y*mod+mod/2;
          

      ////tamaño en funcion de la distancia al mouse:
      float tam;
      tam = map ( dist(i, j, mouseX - dhc, mouseY), 0, 200, mod, 25 );
      //para limitar los maximos de tam:
      tam = constrain( tam, 25, mod);
      
      
      push();
      
      rect(xc, yf, mod, mod);
      fill(negro);
      quad(xc, yf+24, xc+24, yf, xc+24, yf+25, xc, yf+tamCuad);
      quad(xc, yf+tamCuad, xc+24, yf+25, xc+tamCuad, yf+25, xc+26, yf+tamCuad);
      fill(0, 0, 99);
      noStroke();   
      rect(xc+25, yf, tam, tam);
      pop();

    }
  }
  pop();  
}
