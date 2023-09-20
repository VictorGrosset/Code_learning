import time
from sense_hat import SenseHat
sensor = SenseHat()
sensor.clear()

if __name__ == "__main__":    
    
    class Produit:
        def __init__(self, nom_produit, quantité, prix, code_produit):
            self.nom = nom_produit
            self.qty = quantité
            self.prix = prix
            self.code = code_produit
    
    
    class Distributeur:
        def __init__(self):
            self.produit = []
            
        def ajouter_produits(self, produit):
            self.produit.append(produit)    
            
        def afficher_produits(self):
            for prod in self.produit:
                print(vars(prod))
                
        def run(self):
            while True:
                for event in sensor.stick.get_events():
                    if event.direction =="left":
                        sensor.show_message()
                    elif event.direction == "Right":
                        sensor.show_message()
                    #prevoir raz si on depasse l'index du tableau
            
    distributeur = Distributeur()           
    produit1 = Produit("Chips", 10, 1.5, None)
    produit2 = Produit("Soda", 20, 2.0, None)

    distributeur.ajouter_produits(produit1)
    distributeur.ajouter_produits(produit2)
    
    distributeur.afficher_produits()

    