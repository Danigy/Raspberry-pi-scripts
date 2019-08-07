import RPi.GPIO as GPIO 
import time

GPIO.setmode(GPIO.BCM) # BCM / BOARD
GPIO.setwarnings(False)

GPIO.setup(23, GPIO.OUT, initial=GPIO.HIGH) # GPIO 23 in this case
refrigeration_state= True

def switch_ref_value () :

    temp=input("Press any key to turn on / off the refrigeration.")
    if (temp is ""):    
        global refrigeration_state
        refrigeration_state = not refrigeration_state
        GPIO.output(23, GPIO.HIGH if refrigeration_state else GPIO.LOW) # GPIO 23 in this case
        switch_ref_value()
    else:
        print("Wrong! Press enter.")
        switch_ref_value()

try:
    switch_ref_value ()
except KeyboardInterrupt:
            print ()
            print ("Cancelled!")
            exit()