import RPi.GPIO as GPIO
import time
import pandas as pd
from datetime import date, datetime,timedelta
import confuse
from decorators import *



@timer
def test():
    source = confuse.YamlSource('config.yaml')
    
    hz = source['ledPeriod']['hz'] 
    s = source['ledPeriod']['s']
    
    LED = 17
    Button = 27
    duty = 0


    GPIO.setmode(GPIO.BCM)
    GPIO.setup(LED, GPIO.OUT)
    GPIO.setup(Button, GPIO.IN, pull_up_down = GPIO.PUD_UP)

    p = GPIO.PWM(LED, hz)# channel=12 frequency = 1 Hz


    try:
        while 1:
            ButtonState = GPIO.input(Button)

            if ButtonState == False:
                p.start(duty)
                
                for change_duty in range(0,101,5):

                    p.ChangeDutyCycle(change_duty)
                    time.sleep(timedelta(second=s))
                
                for change_duty in range(100, -1, -5):

                    p.ChangeDutyCycle(change_duty)
                    time.sleep(timedelta(second=s))
                
        
            p.stop()

    except KeyboardInterrupt:
        print("Program stopped via keyboard interrupt")
        p.stop()
        GPIO.cleanup()
    
    finally:
        shutter_csv.to_csv("output.csv")


test()
    