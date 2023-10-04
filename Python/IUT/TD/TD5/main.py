import time
import random


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
    def update(self, detection: bool):
        pass


# observer
class AppIoT(Observer):
    def update(self, detection: bool):
        if detection:
            print(f"Présence détectée !")


class Subject:
    def __init__(self):
        self.observers = []

    def addObserver(self, observer):
        self.observers.append(observer)

    def removeObserver(self, observer):
        self.observers.remove(observer)

    def notifyObservers(self, detection: bool):
        for observer in self.observers:
            observer.update(detection)


class CapteurPresence(Subject):
    def __init__(self, seuil):
        super().__init__()
        self.seuil = seuil
        self.pourcentage = 0

    def traiterImage(self):
        self.pourcentage = random.randint(0, 100)

    def detecterMouvement(self):
        detection = self.pourcentage > self.seuil
        self.notifyObservers(detection)


capPresence = CapteurPresence(30)
appIoT = AppIoT()
capPresence.addObserver(appIoT)

while True:
    capPresence.traiterImage()
    capPresence.detecterMouvement()
    time.sleep(2)
