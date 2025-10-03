import processing.javafx.*;

Mover[] movers;
int numberOfMovers = 100;

void setup(){
  size(800,800,P3D);
  movers = new Mover[numberOfMovers];
  
  int i = 0;
  while(i < numberOfMovers){
    movers[i] = new Mover();
    i++;
  }
}
void draw(){
  background(#3C62CE);
  int i = 0;
  while(i < numberOfMovers){
    movers[i].act();
    movers[i].showBody();
    movers[i].showConnections();
    i++;
  }
}
