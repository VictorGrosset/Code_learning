import colorama 
from sense_hat import SenseHat

sensor = SenseHat()
sensor.clear

class Composant:
    def __init__(self, nom):
        self.nom = nom
        
    def retournerNom(self):
        print(self.nom)
    

class Capteur(Composant):
    def afficherValeur(self):
        pass
  
    
class CapteurTemperature(Capteur):
    def afficherValeur(self):
        return sensor.get_temperature()
        
    def retournerNom(self):
        return f"Je suis le capteur de température: {self.nom}"


class CapteurPression(Capteur):
    def afficherValeur(self):
        return sensor.get_pressure()
        
    def retournerNom(self):
        return f"Je suis le capteur de pression: {self.nom}"


class CapteurHumidite(Capteur):
    def afficherValeur(self):
        return sensor.get_humidity()
        
    def retournerNom(self):
        return f"Je suis le capteur d'humidité: {self.nom}"
    
    
class Led(Composant):
    def __init__(self, point, couleur):
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
    
    
class Point():
    def __init__(self, x, y):
        self.x= x
        self.y= y
    def lireCoordonnes(self):
        self.x=int(input("Donner l'abscisse du point"))
        self.y=int(input("Donner l'ordonnée du point"))
    def afficherCoordonnees(self):
        print(self.x, self.y)
        
        
class Couleur():  
    def __init__(self, couleur):
        self.RGB=couleur
    def lireCouleur(self):
        self.RGB.clear()
        for elt in range(3):
            self.RGB.append(int(input("Entrez les couleurs R, G, B")))
    def afficherCouleur(self):
        print (self.RGB)
        
point1 = Point(0, 0)
point2 = Point(0, 7)
point3 = Point(7, 0)
point4 = Point(7, 7)
point5 = Point(3, 3)
liste_point = []
liste_point.extend([point1, point2, point3, point4, point5])

couleur1 = Couleur([255, 0, 0])
couleur2 = Couleur([100, 100, 100])
couleur3 = Couleur([0, 100, 100])
couleur4 = Couleur([0, 0, 255])
couleur5 = Couleur([0, 255, 0])
liste_couleur = []
liste_couleur.extend([couleur1, couleur2, couleur3, couleur4, couleur5])
 
 
led1= Led(point1, couleur1)
led2= Led(point2, couleur2)
led3= Led(point3, couleur3)
led4= Led(point4, couleur4)
led5= Led(point5, couleur5)
liste_led = []
liste_led.extend([led1, led2, led3, led4, led5])

sensor.clear()
for led in range(5):
    liste_led[led].switchOnLed()
"""     liste_led[index].readColor(liste_couleur[index])
    liste_led[index].readPosition(liste_point[index]) """

       