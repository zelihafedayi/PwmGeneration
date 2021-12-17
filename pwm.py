import RPi.GPIO as GPIO
import time
import pandas as pd
import datetime

LED = 17
Button = 27
duty = 0

GPIO.setmode(GPIO.BCM)
GPIO.setup(LED, GPIO.OUT)
GPIO.setup(Button, GPIO.IN, pull_up_down = GPIO.PUD_UP)

p = GPIO.PWM(LED, 1)# channel=12 frequency = 1 Hz

shutter_csv = pd.DataFrame()

current_date_time = datetime.now()

try:
    while 1:
        ButtonState = GPIO.input(Button)

        if ButtonState == False:
            p.start(duty)
            
            for change_duty in range(0,101,5):
                p.ChangeDutyCycle(change_duty)
                time.sleep(0.2)
               
            for change_duty in range(100, -1, -5):
                p.ChangeDutyCycle(change_duty)
                time.sleep(0.2)
               
        shutter_csv.append(current_date_time)
        shutter_csv.append(p,ignore_index = True)
       
        p.stop()

except KeyboardInterrupt:
    print("Program stopped via keyboard interrupt")
    p.stop()
    GPIO.cleanup()
   
finally:
    shutter_csv.to_csv("output.csv")

    