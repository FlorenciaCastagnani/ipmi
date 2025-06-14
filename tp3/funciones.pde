void cuadrados(int x, int y) {
  push();
  translate(dhc, 0);
  for (int i = 0; i < cant; i++) {
    for (int j = 0; j < cant; j++) {

      int xc = i * tamCuad;
      int yf = j * tamCuad;
      
      fill(0, 0, 99);
      noStroke();
      
      rect(x+xc+23, y+yf, 27, 27);
      fill(negro);
      quad(xc, yf+24, xc+24, yf, xc+24, yf+25, xc, yf+tamCuad);
      quad(xc, yf+tamCuad, xc+24, yf+25, xc+tamCuad, yf+25, xc+26, yf+tamCuad);
    }
  }
  pop();
}
