import time
import os
import numpy as np
from functions_interface import *
class Element:
    def __init__(self, nom, type_boite, size, couleur, position):
        self.nom = nom
        self.type = type_boite
        self.dimension = size
        self.couleur = couleur
        self.position = position
        self.handle = send_object_coppelia(nom, type_boite, size)
        self.set_position(self.position)
        self.set_couleur((self.couleur))

    def afficher_console(self):
        return self.nom, self.position, self.couleur

    def set_position(self, position):
        self.position = position
        set_object_pos_coppelia(self, position)

    def set_couleur(self, couleur):
        self.couleur = couleur
        for index in range(3):
            if self.couleur[index] > 255:
                self.couleur[index] = 255
        set_object_color_coppelia(self, self.couleur)

class Robot:
    def __init__(self, nom, type_robot, position_base):
        self.name = nom
        self.type = type_robot
        self.position_base = position_base
        self.handle = send_robot_coppelia(nom, type_robot)
        self.changer_position_robot(position_base)

    def changer_position_robot(self, position):
        set_object_pos_coppelia(self, position)

    def saisir_objet(self, objet):
        attach_object_EE_coppelia(self, objet)

    def lacher_object(self):
        release_object_EE_coppelia(self)

    def bouger(self, ref):
        move_robot_coppelia(self, ref)

#Exercices 1 & 2
'''
rouge = [250, 0, 0]
vert = [0, 250, 0]
bleu = [0, 0, 250]
tab_Element = []

box1 = Element("box 1", 3, [3, 2, 1], [250, 0, 0], [2, 0, 0.5])

for boites in range(5):
    offset = [-4 + boites * 2, 0, 1] #offset doit absolument être contenu dans la boucle for. Comme les classes sont dynamiques, elles prendront la dernière valuer d'offset
    if offset[0] < 0:
        tab_Element.append(Element("box" + str(boites), 3, [1, 1, 1], rouge, offset))
    elif offset[0] == 0:
        tab_Element.append(Element("box" + str(boites), 3, [1, 1, 1], vert, offset))
    else:
        tab_Element.append(Element("box" + str(boites), 3, [1, 1, 1], bleu, offset))
'''

#Exercice 3
table = Element("box1", 3, [0.5, 1, 0.25], [50, 200, 200], [-1, 0, 0.125])
assiette = Element("assiette", 5, [0.1, 0.1, 0.01], [0, 0, 0],[-1, -0.4, 0,5/2])
robot_scara = Robot("SCARA", "SCARA", [-1, 0, 0.42])
robot_3ddl = Robot("3DDL", "3DDL", [-1, 0.2, 0.25])

robot_scara.bouger("left")
robot_scara.saisir_objet(assiette)
robot_scara.bouger("middle")
robot_scara.lacher_object()
robot_scara.bouger("left")


print("Fin du script")

#Attention
#l'attribut nom unique de Robot doit s'appeler self.name et pas self.nom car il es défini ainsi dans scara_robot_building' melange anglais 
# francais

#Changement ligne 46-47-48 /Robot1_q1 en /SCARA_q1 etc... dans functions_interface.py. Ne serait il possible de recuperer l'attribut name 
# de la classe pour 'proteger' la méthode car l'on envoie des Robot() qui n"ont jamais le nom Robot1. Et puis dans le cas où l'on en enverrait
#d'autres sortes encore

#Les coordonnées de la forme [x, y, z] ne sont pas très précises. cela donne des positions hasardeuses