#include <Arduino.h>
#include <Wire.h>
#include <PubSubClient.h>
#include <U8g2lib.h>
#include "config.h"
#include "ota.h"
#include "temperature.h"
#include "oled.h"



const char CompileDate[] = __DATE__ " " __TIME__;
/* TO DO:-
oled screen cycle stats
oled screen readable titles
test OTA Update
Add ip setup
add wifi setup
check temp i2c calls to HDC1080
Actually understand how i2c block works
*/
/*

GPIO0  - Program mode toggle switch
GPIO2 - Freeish used in program mode
GPIO4 - SDA
GPIO5 - SCL
GPIO12 - Free
GPIO13 - Free
GPIO14 - Pulse
GPIO16 - Free

*/

volatile unsigned int pulseCount1_Wh  = 0;
volatile unsigned int pulseCount1_kWh = 0;

const long interval = 1000;
unsigned long previousMillis = 0;
long debouncing_time = 15; //Debouncing Time in Milliseconds
volatile unsigned long last_micros;

void pulseCounter01() {
    //pulseCounter - kinda messey debounce
    if((long)(micros() - last_micros) >= debouncing_time * 1000) {
        pulseCount1_Wh++;
        if(pulseCount1_Wh == 1000)
        {
            pulseCount1_Wh = 0;
            pulseCount1_kWh++;
        }
        last_micros = micros();
  }
}

void setup() {
    Wire.begin(SDA,SCL);
    Serial.begin(115200);
    delay(300);
    oled_begin();
    //ota_setup();
    pinMode(14, INPUT);
    attachInterrupt(14, pulseCounter01, FALLING);
    Serial.println(CompileDate);
    Serial.println("Ready");
}

void loop() {

    unsigned long currentMillis = millis();
    if(currentMillis - previousMillis >= interval) {
        previousMillis = currentMillis;

    // put your main code here, to run repeatedly:
    //ota_task();
    double temperature;
    double humidity;

    humidity = readSensor(&temperature);
    Serial.print("Humid: ");
    Serial.print(humidity);
    Serial.print("  -  Temp: ");
    Serial.print(temperature);
    Serial.print(" - Pulse: ");
    Serial.print(pulseCount1_kWh);
    Serial.print("_");
    Serial.println(pulseCount1_Wh);

    oled_thing(&temperature);
    //delay(1000);



    }

}
