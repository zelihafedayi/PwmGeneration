#include <wiringPi.h>
#include <csignal>
#include <thread>
#include <iostream>
#include <string>
using namespace string;
using namespace str;



//Thread One
void PwmGenerate(const int pwmPin,const int pwmValue) { 
    pinMode(pwmPin, PWM_OUTPUT); // Set PWM LED as PWM output
    pwmWrite(pwmPin, pwmValue);
}

//Thread Two
void blink_led(const int led,const int time) {
    
      digitalWrite(led, HIGH);
      delay(time);
      digitalWrite(led, LOW);
      delay(time);
  }

int main (int argc, char ** argv) {
    
    using namespace boost; 
    
    thread thread_2 = thread(task2, "hi ");


    return 0;
}

int main(void)
{
    // Setup stuff:
    wiringPiSetupGpio(); // Initialize wiringPi -- using Broadcom pin numbers
    int pwmPin = 18; // PWM LED - Broadcom pin 18, P1 pin 12
    int ledPin = 23; // Regular LED - Broadcom pin 23, P1 pin 16
    int butPin = 17; // Active-low button - Broadcom pin 17, P1 pin 11

    nt pwmValue = 1; 
    unsigned int PrevTime;		// Temporary variable that holds the previous millis value

    pinMode(ledPin, OUTPUT);     // Set regular LED as output
    pinMode(butPin, INPUT);      // Set button as INPUT
    pullUpDnControl(butPin, PUD_UP); // Enable pull-up resistor on button
    std::cout<<"blinker is running , press key to exit"<<;

   while(1){

       if(digitalRead(butpin)){
           thread thread_1 = thread(PwmGenerate, 1,25);
           digitalWrite(ledPin, LOW);
       }
       
       else{
           	prevTime = millis();
            std::cout<<"Time Inteval :" << millis() - PrevTime<<endl;
            thread thread_1 = thread(PwmGenerate, 1,1024- 25); // PWM LED at dim setting
            // Do some blinking on the ledPin:
            thread thread_2 = blink_led(7, 75);

        }

       }
    // do other stuff
    thread_2.join();
    thread_1.join();
    return 0;
   }