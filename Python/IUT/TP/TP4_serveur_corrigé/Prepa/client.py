import json
import requests

class RemoteServer:
    def __init__(self, ip: str, port: int):
        self.ip_address =ip
        self.port = port
        self.baseURL = f'http://{self.ip_address}:{self.port}'

    def doRequest(self, path: str):
        response = requests.get(self.baseURL+path)

class RemoteDevice:
    def __init__(self, name: str):
        self.name = name
        self.path = None
        self.server: [RemoteServer] = None # quid de optionnal[]

    def setServer(self, server):
        #associer serveur au device

    def getReresentation(self):
        pass


class RemoteSensor(RemoteDevice):
    def __init(self, path: str, name: str)
        super().__init__(name)
        self.path = path

    def getReresentation(self):
        # recupérer la représentation auprès du serveur
        pass

    def getLastValue(self):
        # recupérer la dernière valeur auprès du serveur
        pass

    def getHistory(self):
        # recupérer l'historique depuis le serveur

class RemoteLedger(RemoteDevice):
    def __init__(self, path: str, name: str):
        super().__init__(name)
        self.path = path





# Programme principal :
#
# Récupérer auprès du serveur le nom de tous les devices exposés par le serveur et les
# organisées dans deux listes distinctes : sensorNameList et ledNameList.
# Créer une liste d’instances de RemoteSensor : sensors pour chaque capteur dont le nom
# est dans la liste sensorNameList
# Créer une liste d’instances de RemoteLed : LEDs pour chaque led dont le nom est dans
# la liste ledsNameList
#
# Dans une boucle infinie :
#     Récupérer la dernière valeur de chaque capteur et l’afficher à l’écran
#     Chaque 10 itérations :
#         Afficher l’historique récupéré auprès du serveur pour chaque capteur
#     Choisir une led au hasard et lui affecter une couleur aléatoire
#     Attendre un délai de 2 secondes