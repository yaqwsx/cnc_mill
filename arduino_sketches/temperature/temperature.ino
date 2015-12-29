#include <OneWire.h>
#include <DallasTemperature.h>

// Data wire is plugged into pin 2 on the Arduino
#define ONE_WIRE_BUS 2

// Setup a oneWire instance to communicate with any OneWire devices (not just Maxim/Dallas temperature ICs)
OneWire oneWire(ONE_WIRE_BUS);

// Pass our oneWire reference to Dallas Temperature. 
DallasTemperature sensors(&oneWire);

void setup(void)
{
  // start serial port
  Serial.begin(9600);
  // Start up the library
  sensors.begin(); // IC Default 9 bit. If you have troubles consider upping it 12. Ups the delay giving the IC more time to process the temperature measurement
}


void loop(void)
{ 
  sensors.requestTemperatures(); // Send the command to get temperatures
  Serial.print("{ \"temperatures\": [");
  for (int i = 0; i != sensors.getDeviceCount(); i++) {
    Serial.print(sensors.getTempCByIndex(i));
    if (i != sensors.getDeviceCount() - 1)
      Serial.print(", ");
  }
  Serial.print("] }\n");
  
}

