#include <Arduino.h>
#include <Wire.h>
#include <PubSubClient.h>
#include <U8g2lib.h>
#include "config.h"
#include "ota.h"
#include "temperature.h"
#include "oled.h"
#include "wifi.h"
#include "mqtt.h"



const char CompileDate[] = __DATE__ " " __TIME__;
/* TO DO:-
~~oled screen cycle stats~~
oled screen readable titles
test OTA Update with real PSU
test ip setup with real PSU
test wifi setup with real PSU
check temp i2c calls to HDC1080 +
Actually understand how i2c block works
Add MQTT
change config.h in git to be a template
~~use modulars to do a timer for the screen~~
Refactor pulse code and move to own cpp File
Refactor oled to take a string instead of a double
Refactor termperature code to be more clear, all pointers all the time
*/
/*

GPIO0  - Program mode toggle switch
GPIO2 - Freeish used in program mode
GPIO4 - SDA  //SSD1306 & HDC1080
GPIO5 - SCL
GPIO12 - Free
GPIO13 - Free
GPIO14 - Pulse
GPIO16 - Free

*/

volatile unsigned int pulseCount1_Wh  = 0;
volatile unsigned int pulseCount1_kWh = 0;

unsigned short screenCycle = 0;

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
    oled_setup();
    ota_setup();
    wifi_setup();
    mqtt_setup();
    pinMode(14, INPUT);
    attachInterrupt(14, pulseCounter01, FALLING);
    Serial.println(CompileDate);
    Serial.println("Ready");

    print_wifi_details();
}

void loop() {

    wifi_task();
    ota_task();

    if (millis() % 2000 == 0) {

    double temperature;
    double humidity;

    humidity = readSensor(&temperature);
    // Optimise me by combining all the strings and doing one print
    Serial.print("Humid: ");
    Serial.print(humidity);
    Serial.print("  -  Temp: ");
    Serial.print(temperature);
    Serial.print(" - Pulse: ");
    Serial.print(pulseCount1_kWh);
    Serial.print("_");
    Serial.println(pulseCount1_Wh);

    switch (screenCycle) {
        case 0:
            oled_thing(&temperature);

            break;
        case 1:
            oled_thing(&humidity);
            break;
        case 2:
            oled_display("test","12.50","!");
            break;

        default:
            break;
    }
    screenCycle = (screenCycle + 1) % 3;

    char temp_str[6];
    snprintf(temp_str, sizeof(temp_str), "%g", temperature);

    char humid_str[6];
    snprintf(humid_str, sizeof(humid_str), "%g", humidity);

    mqtt_task(topic_temperature,temp_str);
    mqtt_task(topic_humid,humid_str);

    }

}
