/**
  Lunar Lander in Processing. 
  
  Modify the addPhysics() function below to make the
  rocket move! You will need to add gravity, then add
  the thrust for the x_speed and y_speed using the 
  answers to the formula for a right-angled triangle.
  
  Use the arrow keys to fly the rocket around.
  
  Author: Owen Brasier
  MadMaker 2016
*/

float x = 0, y = -100;
float x_speed = 0, y_speed = 0;
boolean exiting = false;

//physics constants
final float GRAVITY = 0.016;
final float THRUST = 0.05;

void setup() {
  size(600, 500);
  setupEnvironment();
}

void draw() {
  if (exiting) {
    delay(3000);
    exit();
  }
  handleKeys();  
  addPhysics();
  if (view() > 0) {
    exiting = true;
  }
}

// EDIT THIS FUNCTION!!!
void addPhysics() {
  // ADD GRAVITY HERE
  //if (/* THRUSTER IS ON */) {  // thruster == true
  //  // add to x_speed from x equation 
  //  // add to y_speed from y equation 
  //}
  move();     // move the ship
}

// move the rocket
void move() {
  x += x_speed;
  y += y_speed;
}