import processing.sound.*;

Sound sound;
SinOsc pulse1;
SinOsc pulse2;
Env env;
LowPass LP;

int time;

float s1Freq = 261.63;
float s2Freq;
float p1Amp;
float p2Amp;

void setup() {
  size(500,500);
  pulse1 = new SinOsc(this);
  pulse2 = new SinOsc(this);
  env = new Env(this);
  LP = new LowPass(this); 
}

void draw() {
  background(0);
  update(mouseX, mouseY);
  
}
