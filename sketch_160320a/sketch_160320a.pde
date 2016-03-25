float a = 3.085;
float b = -1.504;
float c = 0.111;
float d = -4.393;

ArrayList<MyE> myEs = new ArrayList<MyE>();

void setup() {
  size(500, 500);
  smooth();
  noStroke();
  ellipseMode(CENTER);
  background(250);
  fill(0, 5);
  
  float step = 1.0f / 500.0f;
  for(float x = 0; x < 1; x+=step){
    for(float y = 0; y < 1; y+=step){
      MyE tmpE = new MyE(x,y);
      myEs.add(tmpE);
    }
  }
  
}

void draw() {
  for(MyE tmpE: myEs){
      float nx = sin(a * tmpE.y) - cos(b * tmpE.x);
      float ny = sin(c * tmpE.x) - cos(d * tmpE.y);      
      ellipse(nx*100 + width/2, ny*100 + height/2, 1, 1);
      tmpE.x = nx;
      tmpE.y = ny;
  }  
}

void keyPressed() {
  if(key=='s'){
    saveFrame("fyre-######.png");
  }
}