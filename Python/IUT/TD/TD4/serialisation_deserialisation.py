import pickle
import json
import typing
import colorama


# dicoEtu = {"Nom": "John Doe", "Groupe": "S5 POO", "Notes": [19, 20, 18, 17, 20]}
# pickleData = pickle.dumps(dicoEtu)
# print(pickleData)
# newDico1 = pickle.loads(pickleData)
# print(newDico1)
# print()
# jsondata = json.dumps(dicoEtu)
# print(jsondata)
# newdico2 = json.loads(jsondata)
# print(newdico2)
class Etudiant:

    def __init__(self, nom: str, groupe: str):
        self.nom = nom
        self.groupe = groupe
        self.notes = []
        self.flag_wrong_value_found = 0

    def __str__(self) -> str:
        infos = (f"{colorama.Fore.GREEN}{self.nom} du groupe {self.groupe}\n"
                 f"notes: {self.notes}{colorama.Style.RESET_ALL}")
        return infos

    def serialize_JSON(self) -> dict:
        return {"Nom": self.nom,
                "Groupe": self.groupe,
                "Notes": self.notes
                }

    def deserialize_JSON(self, object_data: dict):
        self.nom = object_data["Nom"]
        self.groupe = object_data["Groupe"]
        self.notes = object_data["Notes"]

    @typing.overload
    def ajouter_notes(self, note: int):
        self.notes.append(note)

    @typing.overload
    def ajouter_notes(self, notes: list):
        for note in notes:
            if not isinstance(note, int):
                print(f"Au moins une des valeurs de la liste n'est pas un int. {type(note)} {note} trouvé !")
                self.flag_wrong_value_found = 1
            break
        if self.flag_wrong_value_found == 0:
            self.notes.extend(notes)
        else:
            pass

    def ajouter_notes(self, notes):
        if isinstance(notes, int):
            self.notes.append(notes)
        elif isinstance(notes, list):
            for note in notes:
                if not isinstance(note, int):
                    print(
                        f"\033[91mAu moins une des valeurs de la liste n'est pas un int. ({type(note)}){note} trouvé\033[0m")
                    self.flag_wrong_value_found = 1
            if self.flag_wrong_value_found == 0:
                self.notes.extend(notes)
            else:
                pass
        else:
            # raise TypeError("Erreur d'attribut. int ou list attendu")
            print(f"{colorama.Fore.RED}Erreur d'attribut pour la valeur '{notes}'. Type int ou list attendu.\n "
                  f"La valeur '{notes}' n'a pas été ajouté{colorama.Style.RESET_ALL}")


class EtudiantEncoder(json.JSONEncoder):
    def __init__(self, obj: Etudiant):
        super().__init__()
        self.__default__(obj)

    def __default__(self, obj: Etudiant):
        return {"Nom": obj.nom,
                "Groupe": obj.groupe,
                "Notes": obj.notes
                }


class Test():
    pass


# Sans la classe EtudiantEncoder
# etu = Etudiant("John Doe", "S5 POO")
# etu.ajouter_notes(15)
# etu.ajouter_notes([15, 0, 13, 20])
# etu.ajouter_notes("check")
# print(etu)
# etu.ajouter_notes([13, 3, 20])
# print(etu)
# etu.ajouter_notes([3.0, "mec", 'a', oct(168)])
# print(etu)
#
# pickleEtu = pickle.dumps(etu)
# print(pickleEtu)
# newEtu = pickle.loads(pickleEtu)
# print(newEtu)
#
# etu_dico = etu.serialize_JSON()
# jsonEtu = json.dumps(etu_dico)
# print(jsonEtu)
# tempJSON = json.loads(jsonEtu)
# etu2 = Etudiant(None, None) #Todo: définir un overload pour le constructeur avec un dictionnaire
# etu2.deserialize_JSON(tempJSON)
# print(etu2)

# Avec la classe EtudiantEncoder
etu = Etudiant("John Doe", "S5 POO")
etu.ajouter_notes(15)
etu.ajouter_notes([15, 0, 13, 20])
etu.ajouter_notes("check")
print(etu)
etu.ajouter_notes([13, 3, 20])
print(etu)
etu.ajouter_notes([3.0, "mec", 'a', oct(168)])
print(etu)

test = Test()
# cls_test = EtudiantEncoder(test) test n'est pas une instance de Etudiant
cls = EtudiantEncoder.__default__(etu)
print(cls)
