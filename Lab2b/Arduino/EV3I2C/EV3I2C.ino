#include <Wire.h>
#define SLAVE_ADDRESS 0x04

int val, flag = 0;
int numero = 50;
int counter = 0;
long timeControl = 0;

void setup(){
  Serial.begin(9600);
  Wire.begin(SLAVE_ADDRESS);
  Wire.onReceive(receiveData);
  Wire.onRequest(sendData);
  Serial.println("Ready!");
  timeControl = millis();
}

void loop(){
  if (flag == 1)
  {
    Serial.println(val);
    flag = 0;
  }
}

void receiveData(int byteCount)
{
  while (Wire.available() > 0)
  {
    val = Wire.read();
    flag = 1;
  }
}

void sendData(){
  if (millis() - timeControl >= 5000) {
    timeControl = millis();
    if (numero == 51) {
      numero = 52;
    } else {
      numero = 51;
    }
  }
  Wire.write(numero);
}
