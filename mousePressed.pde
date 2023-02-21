void mousePressed() {
  
  pulse1.play();
  pulse1.freq(s1Freq);
  
  pulse2.play();
  pulse2.freq(s2Freq);
  
  pulse1.amp(p1Amp);
  pulse2.amp(p2Amp);
  
  env.play(pulse1, 0.2, 0.5, 0.5, 0.7);
  env.play(pulse2, 0.2, 0.5, 0.5, 0.7);
  
  
  previous[mouseX][mouseY] = 255;
  
}
