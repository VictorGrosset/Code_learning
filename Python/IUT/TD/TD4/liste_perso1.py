#maListe = [10, 3.14, "Paris", "Paris"]
#print(maListe)  #Affiche le contenu
#maListe.append(True) #Ajoute une valeur
#print(len(maListe)) #Affiche le nombre d'élèment
#print(maListe[2])   #Affiche le troisième élèment
#maListe.remove("Paris") #Supprime l'élèment "Paris"
#print(maListe)  #Affiche le contenu


class ListeNombre:
    def __init__(self):
        self.data = []
        self.nbElem = 0

    def afficher(self):
        resultat = "[ "
        for element in self.data:
            resultat += f"{element} | "
        resultat = resultat[0: len(resultat) - 2] + "]"
        print(resultat)

    def ajouter(self, element):
        if type(element) is int:
            self.data.append(element)
            self.nbElem += 1
        else:
            print(f"L'élément {element} n'est pas un un entier: il n'a donc pas été ajouté")

    def element(self, position):
        print(self.data[position - 1])

    def longueur(self):
        print(self.nbElem)

    def enlever(self, element):
        count = self.data.count(element)
        for index in range(count):
            self.data.remove(element)
            self.nbElem -= 1

ma_liste = ListeNombre()
ma_liste.ajouter(3)
ma_liste.ajouter(13)
ma_liste.ajouter(3)
ma_liste.ajouter(1993)
ma_liste.ajouter(3)
ma_liste.ajouter("Toulouse")
ma_liste.afficher()
ma_liste.longueur()
ma_liste.element(2)
ma_liste.enlever(3)
ma_liste.afficher()