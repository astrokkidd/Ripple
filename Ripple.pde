import processing.sound.*;

int cols;
int rows;
float[][] current;
float[][] previous;

float dampening = 0.91;

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
  cols = width;
  rows = height;
  current = new float[cols][rows];
  previous = new float[cols][rows];
}

void draw() {
  background(0);
  update(mouseX, mouseY);
  drawRipple();
}
