#define BLYNK_PRINT Serial
#include <ESP8266WiFi.h>
#include <BlynkSimpleEsp8266.h>


char auth[] = "TMPL3hsSHiGbb";
char ssid[] = "soilmoisture";
char pass[] = "VQisKTiUuRJNe3EaSfSAQsjdj0SwFCwb";

BlynkTimer timer;
bool Relay = 0;


#define sensor A0
#define waterPump D5

void setup() {
  Serial.begin(9600);
  pinMode(waterPump, OUTPUT);
  digitalWrite(waterPump, HIGH);
 
 

  Blynk.begin(auth, ssid, pass, "blynk.cloud", 80);

  
 

  
  timer.setInterval(100L, soilMoistureSensor);
}

//Get the button value
BLYNK_WRITE(V7) {
  Relay = param.asInt();

  if (Relay == 1) {
    digitalWrite(waterPump, LOW);

  } else {
    digitalWrite(waterPump, HIGH);
  }
}

//Get the soil moisture values22102         













void soilMoistureSensor() {
  int value = analogRead(sensor);
  value = map(value, 0, 1024, 0, 100);
  value = (value - 100) * -1;

  Blynk.virtualWrite(V8, value);
  
}



  


void loop() {
  Blynk.run();  //Run the Blynk library
  timer.run();  //Run the Blynk timer
}
