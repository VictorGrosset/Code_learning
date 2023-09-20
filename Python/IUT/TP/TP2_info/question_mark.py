#installer extension Remote SSh
#https://inetdoc.net/video/21E03_RPi+SenseHat+VSCode.m4v
#https://inetdoc.net/video/21E04_RPi+SenseHat+VSCode.m4v

import time
from sense_hat import SenseHAt

sense = SenseHAt()

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