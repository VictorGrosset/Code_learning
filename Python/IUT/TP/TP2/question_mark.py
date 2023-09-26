#installer extension Remote SSh
#https://inetdoc.net/video/21E03_RPi+SenseHat+VSCode.m4v
#https://inetdoc.net/video/21E04_RPi+SenseHat+VSCode.m4v
#addresse RPI 10.6.7.36

#!/usr/bin/python3

import time
from sense_hat import SenseHat

sense = SenseHat()

X = [255, 0, 0]
O = [255, 255, 255]

question_mark = [
    O, O, O, X, X, O, O, O,
    O, O, X, O, O, X, O, O,
    O, O, O, O, O, X, O, O,
    O, O, O, O, X, O, O, O,
    O, O, O, X, O, O, O, O,
    O, O, O, X, O, O, O, O,
    O, O, O, O, O, O, O, O,
    O, O, O, X, O, O, O, O
]

sense.set_pixels(question_mark)
time.sleep(3)
sense.clear()