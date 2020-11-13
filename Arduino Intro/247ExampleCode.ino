//This is where we will initialize our pins and declare their function as
//either input or output 
void setup() {
  pinMode(13, INPUT); // will be used to check if button is pressed
  pinMode(12, OUTPUT); // will be used to power LED
  Serial.begin(9600);
}

//our main code that will run repeatedly 
void loop() {
  //Is the button pressed?
  if(digitalRead(13) == HIGH) {
    //if so, turn on the LED
    digitalWrite(12, HIGH); 
  }
  else {
    //otherwise, keep the LED off
     digitalWrite(12, LOW);
  }
  
  

}
