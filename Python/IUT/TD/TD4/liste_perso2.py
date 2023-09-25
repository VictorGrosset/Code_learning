from collections import UserList


class ListeNombreV2(UserList):
    def __init__(self):
        super().__init__()  # Constructeur de la classe mère
        self.nbElem = 0
        # self.data est déjà déclaré et initialisé dans la classe UserList. Pas besoin de le redéclarer

    def __str__(self) -> str:
        resultat = "[ "
        for element in self.data:
            resultat += f"{element} | "
        resultat = resultat[0: len(resultat) - 2] + "]"
        return resultat

    def __len__(self):
        return self.nbElem

    def __getitem__(self, indice):  # Todo : ajouter mode entier naturel ou debut à 0
        return self.data[indice - 1]

    # Les fonction print(), len() et getitem() ont été redéfinies. A présent, l'appel de ces fonctions
    # respecte le nouveau fonctionnement défini. print() = __str__ par exemple

    def append(self, item):
        if type(item) is int:
            super().append(item)
            self.nbElem += 1
        else:
            print(f"L'élément {item} n'est pas un un entier: il n'a donc pas été ajouté")

    def remove(self, item):
        count = self.data.count(item)
        for index in range(count):
            super().remove(item)
            self.nbElem -= count


ma_liste = ListeNombreV2()
ma_liste.append(3)
ma_liste.append(13)
ma_liste.append(3)
ma_liste.append(1993)
ma_liste.append(3)
ma_liste.append("Toulouse")
print(ma_liste)
len(ma_liste)
print(ma_liste[2])
ma_liste.remove(3)
print(ma_liste)
print(ma_liste[2])
