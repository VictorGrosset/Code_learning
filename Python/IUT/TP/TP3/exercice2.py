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
    def __init__(self):
        self.x_pos
        self.y_pos
        self.color = []

    def readColor(self, color):
        self.color = color
    
    def readPosition(self, x, y):
        self.x = x
        self.y = y
    
    def printColor(self):
        pass
    
    def printPosition(self):
        pass
    
    def switchOnLed(self):
        bool senseSetRGB565pixel(int x, int y, rgb565_pixel_t rgb565)
    
    
class Point():
    def __init__(self):
        self.x=0
        self.y=0
    def lireCoordonnes(self):
        self.x=int(input("Donner l'abscisse du point"))
        self.y=int(input("Donner l'ordonnée du point"))
    def afficherCoordonnees(self):
        print(self.x, self.y)
        
        
class Couleur():  
    def __init__(self):
        self.RGB=[0,0,0]
    def lireCouleur(self):
        self.RGB.clear()
        for elt in range(3):
            self.RGB.append(int(input("Entrez les couleurs R, G, B")))
    def afficherCouleur(self):
        print (self.RGB)
        
point1 = Point()
point2 = Point()
point3 = Point()
point4 = Point()
point5 = Point()
liste_point = []
liste_point.extend([point1, point2, point3, point4, point5])

couleur1 = Couleur()
couleur2 = Couleur()
couleur3 = Couleur()
couleur4 = Couleur()
couleur5 = Couleur()
liste_couleur = []
liste_couleur.extend([couleur1, couleur2, couleur3, couleur4, couleur5])
    
led1= Led()
led2= Led()
led3= Led()
led4= Led()
led5= Led()
liste_led = []
liste_led.extend([led1; led2, led3, led4, led5])

for index in range(1, 6, 1):
    liste_led[index].readColor(liste_couleur[index])
    liste_led[index].readPosition(liste_point[index])
    liste_led[index].switchOnLed()
       