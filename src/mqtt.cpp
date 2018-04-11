/*
Hacked from:
https://github.com/knolleary/pubsubclient
knolleary/pubsubclient is licensed under the MIT License
See notice at end of file.
*/

#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include "config.h"
#include "oled.h"

WiFiClient espClient;
PubSubClient client(espClient);


void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("] ");
  for (int i = 0; i < length; i++) {
    Serial.print((char)payload[i]);
  }
  Serial.println();
}

void mqtt_setup() {
  client.setServer(MQTT_SERVER, MQTT_PORT);
  client.setCallback(callback);
}

void mqtt_reconnect() {
  // Loop until we're reconnected
  if (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Attempt to connect
    if (client.connect(MQTT_NAME, MQTT_USER, MQTT_PASSWORD)) {
      Serial.println("connected");
      // Once connected, publish an announcement...
      //client.publish("outTopic", "hello world");
      // ... and resubscribe
      //client.subscribe("inTopic");
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");

       //TODO: use client.state() error codes
      char errorCode[4];
      snprintf(errorCode, sizeof(errorCode), "%d", client.state());
      oled_display("MQTT:","Error",errorCode);


      // Wait 5 seconds before retrying
      delay(5000);
      oled_display("Retrying:","MQTT","_");
      //TODO: Add a timeout on MQTT retry to check wifi connection is present
    }
  }
}

void mqtt_task() {
    if (!client.connected()) { //check for disconnect
      mqtt_reconnect();
    }
    client.loop();
}

void mqtt_publish(const char* topic, const char* message) {

  if (!client.connected()) { //check for disconnect
    mqtt_reconnect();
  }
  client.loop(); // check for incoming messages and keep alive server connection.
  //TODO: Split mqtt update task and publishing to two seperate functions.
  client.publish(topic, message);
}


/*
Copyright (c) 2008-2015 Nicholas O'Leary

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/
