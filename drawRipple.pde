void drawRipple() {
  loadPixels();
  for (int i = 1; i < cols - 1; i++) {
    for (int j = 1; j < rows - 1; j++) {
      current[i][j] = (
        previous[i-1][j] +
        previous[i+1][j] +
        previous[i][j-1] +
        previous[i][j+1]) /2 -
        current[i][j];
      current[i][j] = current[i][j] * dampening;
      int index = i + j * cols;
      pixels[index] = color(current[i][j] * 255);
    }
  }
  updatePixels();
  
  float[][] temp = previous;
  previous = current;
  current = temp;
  
  
}
