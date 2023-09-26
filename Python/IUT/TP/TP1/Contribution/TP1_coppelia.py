import time
import os
#import numpy as np
#from functions_interface import *
   


####### classe pour la partie 1 ########
class Element:
    def __init__(self, nom, type, dimension, couleur, position):
        self.nom = nom
        self.type = type
        self.dimension = dimension
        self.couleur = couleur
        self.position = position
        #self.handle = send_object_coppelia(self.name, self.type, self.size)

    def afficher_console(self):
        return self.nom, self.position, self.couleur

    def set_position(self, position):
        self.position = position
        #set_object_pos_coppelia(object, position)

    def set_couleur(self, couleur):
        self.couleur = couleur
        #set_object_color_coppelia(object, value)

    #set_couleur avec garde
    '''
    def set_couleur(self, couleur):
        self.couleur = couleur

        for index in range(3):
            if self.couleur[index] > 255:
                self.couleur[index] = 255*
    '''

########################################
        
####### classe pour la partie 2 ########

########################################



#### Partie 1 ####
boite1 = Element("", "boite", [3, 2, 1], [250, 0, 0], [2, 0, 0.5])

objs = [MyClass() for i in range(10)]
for obj in objs:
    other_object.add(obj)

objs[0].do_sth()




#### Partie 2 ####




