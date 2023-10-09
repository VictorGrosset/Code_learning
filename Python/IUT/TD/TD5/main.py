import time
import random

class Piece:
    def __init__(self, numero, surface):
        self.surface = 0
        self.numero = 0

# class CapteurPresence(Subject):
#     def __init__(self, seuil: int):
#         self.seuil = seuil
#         self.pourcentage = 0
#
#     def traiterImage(self):
#         self.pourcentage = random.randint(0, 100)
#
#     def detecterMouvement(self) -> str:
#         if self.pourcentage < self.seuil:
#             return f"Présence détectée !"
#         else:
#             pass
class Observer:
    def update(self, detection: bool, salle):
        pass


# observer
class AppIoT(Observer):
    def update(self, detection: bool, salle):
        if detection:
            print(f"Présence détectée dans {salle.numero}!")


class AppSecu(Observer):
    def update(self, detection: bool, salle):
        if detection:
            print(f"Alerte dans {salle.numero}")


class Subject:
    def __init__(self):
        self._observers = []

    def addObserver(self, observer):
        self._observers.append(observer)

    def removeObserver(self, observer):
        self._observers.remove(observer)

    def notifyObservers(self, detection: bool, salle: Piece):
        for observer in self._observers:
            observer.update(detection, salle)


class CapteurPresence(Subject):
    def __init__(self, seuil, salleAssociee):
        super().__init__()
        self.seuil = seuil
        self.pourcentage = 0
        self.salleAssociee = salleAssociee

    def traiterImage(self):
        self.pourcentage = random.randint(0, 100)

    def detecterMouvement(self):
        detection = self.pourcentage > self.seuil
        self.notifyObservers(detection, self.salleAssociee)


appIoT = AppIoT()
appSecu = AppSecu()
salleA08 = Piece(8, 20)
capPresence = CapteurPresence(30, salleA08)

capPresence.addObserver(appIoT)
capPresence.addObserver(appSecu)

while True:
    capPresence.traiterImage()
    capPresence.detecterMouvement()
    time.sleep(2)
