#include <Arduino.h>

void sendValue(String name, int value, float scale) {
    const int MIN = 32;
    const int MAX = 1000;
    if (value < MIN)
        value = MIN;
    if (value > MAX)
        value = MAX;

    float v = (value - MIN) / float(MAX - MIN);

    Serial.print(name);
    Serial.print(":");
    Serial.println(scale * v);
}

void setup() {
    Serial.begin(115200);
}

void loop() {
    sendValue("POT0", analogRead(A3), 2);
    sendValue("POT1", analogRead(A4), 1);
    sendValue("POT2", analogRead(A5), 1);
    delay(50);
}
