#include "wifi.h"
#include "config.h"

/*
Hacked from: https://github.com/platformio/platformio-examples.git
platformio/platformio-examples/espressif
Licensed under the Apache License 2.0
*/

void wifi_setup() {
  WiFi.mode(WIFI_STA); //set to client mode
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD); //connect to AP
  while (WiFi.waitForConnectResult() != WL_CONNECTED) {
    Serial.println("Connection Failed! Rebooting...");
    delay(5000);
    ESP.restart();
  }
}

void print_wifi_details() {
  Serial.print("Connected. IP address: ");
  Serial.println(WiFi.localIP());
}

bool wifi_connected() {
  return WiFi.status() == WL_CONNECTED;
}

void reconnect_wifi() {
  while (!wifi_connected()) {
    Serial.print("Attempting Wifi connection...");
    wifi_setup();
  }
}

void wifi_task() {
  if (!wifi_connected()) reconnect_wifi();
}
