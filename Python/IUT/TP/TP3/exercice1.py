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
    
#3 capteurs de température, 3 capteurs d’humidité et 2 capteurs de pression.
captTemperature1=CapteurTemperature("temp1")
captTemperature2=CapteurTemperature("temp2")
captTemperature3=CapteurTemperature("temp3")
captPression1=CapteurPression("pression1")
captPression2=CapteurPression("pression2")
captHumidite1=CapteurHumidite("humidite1")
captHumidite2=CapteurHumidite("humidite2")
captHumidite3=CapteurHumidite("humidite3")

liste_capteur = []
liste_capteur.extend([captTemperature1, captTemperature2, captTemperature3, captPression1, captPression2, captHumidite1, captHumidite2, captHumidite3])

for instance in liste_capteur:
    if isinstance(instance, CapteurTemperature):
        print(f"{instance.retournerNom()}. Valeur: {instance.afficherValeur()} °C")
        print()
    
    elif isinstance(instance, CapteurPression):
        print(f"{instance.retournerNom()}. Valeur: {instance.afficherValeur()} hPa")
        print()
        
    elif isinstance(instance, CapteurHumidite):
        print(f"{instance.retournerNom()}. Valeur: {instance.afficherValeur()} g/m3")
        print()
        
    else:
        TypeError("L'instance utlisée n'est pas prévu pour cette utilisation")
        

for instance in liste_capteur:
    print(f"{instance.nom}: {instance.afficherValeur()}")
