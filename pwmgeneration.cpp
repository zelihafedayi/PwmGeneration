#include<iostream.h>
#include<wiringPi.h>
#include<csignal>

const int pwmPin = 18; // PWM LED - Broadcom pin 18, P1 pin 12
const int ledPin = 23; // Regular LED - Broadcom pin 23, P1 pin 16
const int butPin = 17; // Active-low button - Broadcom pin 17, P1 pin 11

const int pwmValue = 1; // Use this to set an LED brightness
unsigned int PrevTime;		// Temporary variable that holds the previous millis value


int main(void)
{
    // Setup stuff:
    wiringPiSetupGpio(); // Initialize wiringPi -- using Broadcom pin numbers

    pinMode(pwmPin, PWM_OUTPUT); // Set PWM LED as PWM output
    pinMode(ledPin, OUTPUT);     // Set regular LED as output
    pinMode(butPin, INPUT);      // Set button as INPUT
    pullUpDnControl(butPin, PUD_UP); // Enable pull-up resistor on button
    std::cout<<"blinker is running , press key to exit"<<;

   while(1){

       if(digitalRead(butpin)){
           pwmWrite(pwmPin, pwmValue);
           digitalWrite(ledPin, LOW)
       }
       
       else{
           	prevTime = millis();
           std::cout<<"Time Inteval :" <<millis() - PrevTime<<endl;
            pwmWrite(pwmPin, 1024 - pwmValue); // PWM LED at dim setting
            // Do some blinking on the ledPin:
            digitalWrite(ledPin, HIGH); // Turn LED ON
            delay(1); 
            digitalWrite(ledPin, LOW); // Turn LED OFF
            delay(1); 
        }

       }
       return 0;
   }




