import pickle
import json
import typing


#dicoEtu = {"Nom": "John Doe", "Groupe": "S5 POO", "Notes": [19, 20, 18, 17, 20]}
#pickleData = pickle.dumps(dicoEtu)
#print(pickleData)
#newDico1 = pickle.loads(pickleData)
#print(newDico1)
#print()
#jsondata = json.dumps(dicoEtu)
#print(jsondata)
#newdico2 = json.loads(jsondata)
#print(newdico2)

class Etudiant:
    def __init__(self, nom, groupe):
        self.nom = nom
        self.groupe = groupe
        self.notes = []

    @typing.overload
    def ajouter_notes(self, note: int):
        pass

    @typing.overload
    def ajouter_notes(self, notes: list):
        pass


