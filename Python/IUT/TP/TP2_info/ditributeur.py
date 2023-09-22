# -*- coding: utf-8 -*-

import time
import sense_hat

sensor = sense_hat.SenseHat()
sensor.clear()

left_key = sense_hat.DIRECTION_LEFT
right_key = sense_hat.DIRECTION_RIGHT
pressed = sense_hat.ACTION_PRESSED

class Produit:
    def __init__(self, nom_produit, quantite, prix, code_produit):
        self.nom = nom_produit
        self.qty = quantite
        self.prix = prix
        self.code = code_produit


class Distributeur:
    def __init__(self):
        self.produit = []
        self.index = 1

    def ajouter_produits(self, produit):
        self.produit.append(produit)
        self.nb_produit = len(self.produit)

    def retirer_produits(self, produit):
        pass

    def afficher_produits ( self ) :
        for prod in self.produit :
            print ("Nom: ",prod.nom, "Quantite: ", prod.qty, "Prix: ", prod.prix, "Code: ", prod.code)

    #Non implémenté sur Trinket
    #def afficher_produits ( self ) :
    #    for prod in self.produit :
    #        print ( vars ( prod ) )

    def run(self):
        while True:
            for event in sensor.stick.get_events():
                if event.action == pressed:
                    if event.direction == left_key:
                        self.index -= 1
                        if self.index < 0:
                            self.index = self.nb_produit
                    elif event.direction == right_key:
                        if self.index >= self.nb_produit:
                            self.index = 0
                        self.index += 1
                    else:
                        pass
            print(self.index)
            buffer_produit = self.produit[self.index-1]
            message = buffer_produit.nom + " " + str(buffer_produit.prix) + "euro(s)"
            sensor.show_message ( message, 0.02 )

distributeur = Distributeur()
produit1 = Produit("Chips", 10, 1.5, None)
produit2 = Produit("Soda", 20, 2.0, None)
produit3 = Produit("Chewing gum", 100, 0.2, None)
produit4 = Produit("Coca", 10, 5, None)
produit5 = Produit("Orangina", 20, 2.0, None)
produit6 = Produit("Cigarettes", 100, 20, None)


distributeur.ajouter_produits(produit1)
distributeur.ajouter_produits(produit2)
distributeur.ajouter_produits(produit3)
distributeur.ajouter_produits(produit4)
distributeur.ajouter_produits(produit5)
distributeur.ajouter_produits(produit6)
distributeur.afficher_produits()
distributeur.run()


