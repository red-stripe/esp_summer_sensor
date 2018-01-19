#include <U8g2lib.h>
#include <Arduino.h>
#include "config.h"
//#include <iostream>
//#include <string>


U8G2_SSD1306_128X64_NONAME_F_SW_I2C u8g2(U8G2_R0, /* clock=*/ SCL, /* data=*/ SDA, /* reset=*/ U8X8_PIN_NONE);   // All Boards without Reset of the Display
uint8_t m = 24;

void oled_thing(double* f){
// trying to convert to double to a constant char for the oled display. its not really working.
    char m_str[3];
    double g = 23.43;
    // Convert f to string
    char f_str[6];
    snprintf(f_str, sizeof(f_str), "%g", *f);
    //Serial.println((double)(*f),2);
    // //std.string g_str;
    // //g_str.to_string(g);
    // //String g_str = String(g,2);
    // char result[32];
    // //dtostrf(g, 5, 1, result);
    // strcpy(result, u8x8_u8toa(g, 2));
    // //strcpy(m_str, u8x8_u8toa(m, 2));		/* convert m to a string with two digits */
    u8g2.firstPage();
    do {

      u8g2.setFont(u8g2_font_logisoso32_tn);
      u8g2.drawStr(0,63,f_str);

      //u8g2.drawStr(0,63,"18");
      //u8g2.drawStr(42,63,":");
      //u8g2.drawStr(53,63,m_str);
      //u8g2.setFont(u8g2_font_logisoso18_tn);
      //u8g2.drawStr(0,25,"time!");
    } while ( u8g2.nextPage() );
    m++;
    if ( m == 60 )
      m = 0;
}

void oled_begin() {
    u8g2.begin();
}
