# !/usr/bin/env python3

#!/usr/bin/env python3

# Main.py file generated by New Project wizard

# Created:   mer. juil. 7 2021
# Processor: RPI4
# Compiler:  Python 3 (Proteus)

# Modules
from goto import *
import time
import var
import pio
import resource
import RPi.GPIO as GPIO

# Peripheral Configuration Code (do not edit)
#---CONFIG_BEGIN---
import cpu
import FileStore
import VFP
import Generic

def peripheral_setup () :
# Peripheral Constructors
 pio.cpu=cpu.CPU ()
 pio.storage=FileStore.FileStore ()
 pio.server=VFP.VfpServer ()
 pio.LED1=Generic.LED (pio.GPIO5)
 pio.storage.begin ()
 pio.server.begin (0)
# Install interrupt handlers

def peripheral_loop () :
 pio.server.poll ()

#---CONFIG_END---

# Main function
def main () :
# Setup
    peripheral_setup()
    GPIO.setmode(GPIO.BOARD)

#counter maintenance
commut1=0
commut2=0
commut3=0
commut4=0

#GPIO dry_contacts Pin def & I/O
dry_contact_polar=29
dry_contact1=31
dry_contact2=32
dry_contact3=33
dry_contact4=36

GPIO.setup(dry_contact_polar, GPIO.OUT)
GPIO.setup(dry_contact1, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.setup(dry_contact2, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.setup(dry_contact3, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.setup(dry_contact4, GPIO.IN, pull_up_down=GPIO.PUD_UP)

#GPIO transistor_drivers Pin def & I/O
transistor_driver1=11
transistor_driver2=12
transistor_driver3=13
transistor_driver4=15

GPIO.setup(transistor_driver1, GPIO.OUT)
GPIO.setup(transistor_driver2, GPIO.OUT)
GPIO.setup(transistor_driver3, GPIO.OUT)
GPIO.setup(transistor_driver4, GPIO.OUT)

p = GPIO.PWM(29, 100)
delta = 100
p.start(delta)

try:
    while True:

        








        if(GPIO.input(dry_contact1) == 0):
            GPIO.output(transistor_driver1, GPIO.HIGH)
            commut1 += 1
        else:
            GPIO.output(transistor_driver1, GPIO.LOW)

        if(GPIO.input(dry_contact2) == 0):
            GPIO.output(transistor_driver2, GPIO.HIGH)
            commut2 += 1
        else:
            GPIO.output(transistor_driver2, GPIO.LOW)

        if(GPIO.input(dry_contact3) == 0):
            GPIO.output(transistor_driver3, GPIO.HIGH)
            commut3 += 1
        else:
            GPIO.output(transistor_driver3, GPIO.LOW)

        if(GPIO.input(dry_contact4) == 0):
            GPIO.output(transistor_driver4, GPIO.HIGH)
            commut4 += 1
        else:
            GPIO.output(transistor_driver4, GPIO.LOW)

        
            
except KeyboardInterrupt:
    GPIO.cleanup()


     
