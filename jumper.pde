float size = 40;
int i =0;
boolean jump=true;
float y;
float enex,eney;
float ene_speed = 5;


void setup(){
size(1200,600);
background(0);
y=height-size;
}

void keyPressed(){
if(keyCode==UP){
  if(jump==false)
  y-=10;
}
}

void ener_r(){
  eney=random(4*size,height/2-size/2);  
  enex=width;
}

void enemy(){
 
  fill(255,0,0);
  rect(enex-=ene_speed,height,100,-eney);
  rect(enex,0,100,eney);

  if(enex<0){
   ener_r(); 
  }
  if((((y>height-eney-size/2) && (y<height)) || ((y<eney+size/2) && (y>0))) && enex==0)noLoop();
 
}

void draw(){
  background(0);
  if(y<height-size){
    fill(255,255,255);
    rect(0,y+=2,size,size);
    if(y<0)
    y+=10;
  }
   else{
         fill(255,255,255);
     rect(0,y,size,size);
     jump=false;
 }
 enemy();
 
}

  
