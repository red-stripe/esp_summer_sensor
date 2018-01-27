#include <wire.h>
#include <Arduino.h>
#include "config.h"

double readSensor(double* temperature)
{

  //holds 2 bytes of data from I2C Line - sensor is HDC1080
  uint8_t Byte[4];


  uint16_t temp;
  uint16_t humidity;

  //Point to device 0x40 (Address for HDC1080)
  Wire.beginTransmission(hdc1080Addr);
  //Point to register 0x00 (Temperature Register)
  Wire.write(0x00);
  //Relinquish master control of I2C line
  //pointing to the temp register triggers a conversion
  Wire.endTransmission();

  //delay to allow for sufficient conversion time
  delay(20);

  //Request four bytes from registers
  Wire.requestFrom(hdc1080Addr, 4);

  delay(1);

  //If the 4 bytes were returned sucessfully
  if (4 <= Wire.available())
  {
    //take reading
    //Byte[0] holds upper byte of temp reading
    Byte[0] = Wire.read();
    //Byte[1] holds lower byte of temp reading
    Byte[1] = Wire.read();

    //Byte[3] holds upper byte of humidity reading
    Byte[3] = Wire.read();
    //Byte[4] holds lower byte of humidity reading
    Byte[4] = Wire.read();

    //Combine the two bytes to make one 16 bit int
    temp = (((unsigned int)Byte[0] <<8 | Byte[1]));

    //Temp(C) = reading/(2^16)*165(C) - 40(C)
    *temperature = (double)(temp)/(65536)*165-40;

   //Combine the two bytes to make one 16 bit int
    humidity = (((unsigned int)Byte[3] <<8 | Byte[4]));

    //Humidity(%) = reading/(2^16)*100%
    return (double)(humidity)/(65536)*100;
  }
}
