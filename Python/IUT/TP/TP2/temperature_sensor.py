# https://trinket.io/sense-hat
import time
from sense_hat import SenseHat

sensor = SenseHat()
sensor.clear()


class TemperatureMonitor:
    def __init__(self, seuil_alerte):
        self.sense = SenseHat()
        self.seuil_alerte = seuil_alerte

    @staticmethod
    def mesurer_temperature():
        return sensor.get_temperature()

    @staticmethod                                                                                   #fonction static car pas d'interaction avec les attributs de la classe
    def afficher_alerte():
        print("Danger ! La température est dépassée.", sensor.get_temperature(), "°C")
        sensor.set_pixels(wrong)


r = [255, 0, 0]  # rouge
g = [0, 255, 0]  # vert
o = [255, 145, 0]  # orange
b = [0, 0, 0]  # noir

good = [
    b, b, b, b, b, b, b, b,
    b, b, b, b, b, b, b, b,
    b, b, b, b, b, b, b, g,
    b, b, b, b, b, b, g, b,
    b, b, b, b, b, g, b, b,
    g, b, b, b, g, b, b, b,
    b, g, b, g, b, b, b, b,
    b, b, g, b, b, b, b, b
]

wrong = [
    b, b, b, b, b, b, b, b,
    b, b, b, b, b, b, b, b,
    b, b, r, b, b, r, b, b,
    b, b, b, r, r, b, b, b,
    b, b, b, r, r, b, b, b,
    b, b, r, b, b, r, b, b,
    b, b, b, b, b, b, b, b,
    b, b, b, b, b, b, b, b
]

# Programme principal
# Instanciation de la classe TemperatureMonitor avec un seuil d'alerte de 25°C
temperature_monitor = TemperatureMonitor(25)
# Mesure de la température et affichage d'une alerte si nécessaire
while True:
    temperature = temperature_monitor.mesurer_temperature()

    if temperature > temperature_monitor.seuil_alerte:
        temperature_monitor.afficher_alerte()
    else:
        print("Tout va bien. t° = ", temperature_monitor)
        sensor.set_pixels(good)

    time.sleep(1)
    sensor.clear()