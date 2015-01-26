int _width = 900;
int _height = 900;
PVector pos;
  float rad = 200;
  float deviation = 150;
  float noiseFactor = 0.05;
  float noiseStep = 0.06;
  float rotation = 0;
  float radStep = .5;
  float _x = 0;
  float _y = 0;
  int r = 255;
  int g = 255;
  int b = 0;
  int bStep  = 1;
  
void setup(){
  size(900, 900);
  background(0);
  smooth();

   pos = new PVector(0,0);
}

void draw(){
  stroke(200,0,200);
  strokeWeight(.5);
 if(b==254){
     bStep = -1;
 }
 
  if(b==1){
     bStep = 1;
 }
      b+=bStep;

 

  fill(r,g,b, 255);

  rotation += radStep;
  float radians =  radians(rotation);
  float deviatate = noise(noiseFactor) * deviation;
  noiseFactor += noiseStep;
  _x = (rad + deviatate)  * (cos(radians));
  _y = (rad + deviatate) * (sin(radians));

  translate(_width/2, _height/2);
  ellipse(_x, _y, deviatate/5,deviatate/5);
}


