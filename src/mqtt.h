#include <PubSubClient.h>
#include "wifi.h"

#ifndef MQTT_H
#define MQTT_H

static PubSubClient mqtt_client(espClient);

void mqtt_setup();
void mqtt_reconnect();
void mqtt_publish(const char*, const char*);
void mqtt_task();

#endif
