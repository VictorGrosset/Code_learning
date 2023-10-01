import time
from sense_hat import SenseHat

sensor = SenseHat()  # Todo: A definir dans composant
sensor.clear()


class Composant:
    def __init__(self, nom):
        self.nom = nom

    def retournerNom(self):
        print(self.nom)


class Capteur(Composant):
    def afficherValeur(self):
        pass


class Led(Composant):  # Todo : ne pas utiliser la recopie
    def __init__(self, point, couleur):
        super().__init__("nom")
        self.x_pos = point.x
        self.y_pos = point.y
        self.color = couleur.RGB

    def readColor(self, color):
        self.color = color

    def readPosition(self, x, y):
        self.x_pos = x
        self.y_pos = y

    def printColor(self):
        pass

    def printPosition(self):
        pass

    def switchOnLed(self):
        sensor.set_pixel(self.x_pos, self.y_pos, self.color)


class Actionneur(Composant):
    def afficherValeur(self):
        pass

    def desactiver(self):
        pass

    def activer(self):
        pass


class CapteurTemperature(Capteur):
    def afficherValeur(self):
        return sensor.get_temperature()

    def retournerNom(self):
        return "Je suis le capteur de température: ", self.nom


class CapteurPression(Capteur):
    def afficherValeur(self):
        return sensor.get_pressure()

    def retournerNom(self):
        return "Je suis le capteur de pression: ", self.nom


class CapteurHumidite(Capteur):
    def afficherValeur(self):
        return sensor.get_humidity()

    def retournerNom(self):
        return "Je suis le capteur d'humidité: ", self.nom


class Moteur(Actionneur):
    def __init__(self, led):
        super().__init__("nom")
        self.led = led
        self.etat = None

    def activer(self):
        sensor.set_pixel(self.led.x_pos, self.led.y_pos, self.led.color)
        self.etat = True

    def desactiver(self):
        sensor.set_pixel(self.led.x_pos, self.led.y_pos, [0, 0, 0])
        self.etat = False

    def afficherValeur(self):
        if self.etat:
            print("En marche.")
        else:
            print("Eteint.")


class CNA(Actionneur):
    def __init__(self, led):
        super().__init__("nom")
        self.led = led
        self.etat = None

    def activer(self):
        sensor.set_pixel(self.led.x_pos, self.led.y_pos, self.led.color)
        self.etat = True

    def desactiver(self):
        sensor.set_pixel(self.led.x_pos, self.led.y_pos, [0, 0, 0])
        self.etat = False

    def afficherValeur(self):
        if self.etat:
            print("En marche.")
        else:
            print("Eteint.")


class Point():
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def lireCoordonnes(self):
        self.x = int(input("Donner l'abscisse du point"))
        self.y = int(input("Donner l'ordonnée du point"))

    def afficherCoordonnees(self):
        print(self.x, self.y)


class Couleur():
    def __init__(self, couleur):
        self.RGB = couleur

    def lireCouleur(self):
        self.RGB.clear()
        for elt in range(3):
            self.RGB.append(int(input("Entrez les couleurs R, G, B")))

    def afficherCouleur(self):
        print(self.RGB)


point1 = Point(0, 0)
point2 = Point(0, 1)
point3 = Point(0, 2)
point4 = Point(0, 3)
point5 = Point(0, 4)
liste_point = [point1, point2, point3, point4, point5]
couleur1 = Couleur([255, 0, 0])
couleur2 = Couleur([100, 100, 100])
couleur3 = Couleur([0, 100, 100])
couleur4 = Couleur([0, 0, 255])
couleur5 = Couleur([0, 255, 0])
liste_couleur = [couleur1, couleur2, couleur3, couleur4, couleur5]
led1 = Led(point1, couleur1)
led2 = Led(point2, couleur2)
led3 = Led(point3, couleur3)
led4 = Led(point4, couleur4)
led5 = Led(point5, couleur5)
liste_led = [led1, led2, led3, led4, led5]

moteur1 = Moteur(led1)
moteur2 = Moteur(led2)
moteur3 = Moteur(led3)
cna1 = CNA(led4)
cna2 = CNA(led5)
liste_actionneur = [moteur1, moteur2, moteur3, cna1, cna2]

sensor.clear()
for actionneur in range(5):
    liste_actionneur[actionneur].activer()
    time.sleep(1)

for actionneur in range(5):
    print(liste_actionneur[actionneur].afficherValeur())

for actionneur in range(5):
    liste_actionneur[actionneur].desactiver()
    time.sleep(1)

for actionneur in range(5):
    print(liste_actionneur[actionneur].afficherValeur())

# sensor.clear()
# for led in range(5):
#     liste_led[led].switchOnLed()
#     liste_led[index].readColor(liste_couleur[index])
#     liste_led[index].readPosition(liste_point[index])
