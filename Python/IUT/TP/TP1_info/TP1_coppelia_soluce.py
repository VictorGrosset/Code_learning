import time
import numpy as np
import os
from functions_interface import *



####### classe pour la partie 1 ########
class Object:
    def __init__(self, name,type,size):
        self.name = name
        self.type = type
        self.size = size
        self.color = []
        self.position = []

#1.5 et 1.6#
        self.handle = send_object_coppelia(name,type,size)

    def set_object_position(self, position):
        self.position = position
        set_object_pos_coppelia(self,position)

    def set_object_color(self, value):
        if value[0] <= 255 and value[1] <= 255 and value[2] <= 255:
            self.color = value
            set_object_color_coppelia(self, value)
        else:
            print ("invalid value for the color")

########################################

####### classe pour la partie 2 ########
class Robot:

    def __init__(self,name, type):
        self.name = name
        self.type = type
        self.handle = send_robot_coppelia(name,type)

    def set_base_position(self, position):
        self.position = position
        set_object_pos_coppelia(self,position)

    def set_object(self, object):
        attach_object_EE_coppelia(self,object)

    def release_object(self, object):
        release_object_EE_coppelia(object)

    def move_robot(self,ref):
        move_robot_coppelia(self,ref)


########################################

#### Partie 1 ####
"""
# 1.3 #
boite_test = Object("boite_test",3,[3,2,1])
boite_test.color = [250,0,0]
boite_test.position = [2,0,0.5]

# 1.4 # Commenter lui ou 1.5
# boites = []
# for i in range(5):
#     my_boite = Object("boite"+str(i),3,[1,1,1])
#     my_boite.position = [-4+i*2,0,1]
#     if my_boite.position[0]<0:
#         my_boite.color = [250,0,0]
#     elif my_boite.position[0]==0:
#         my_boite.color = [0,250,0]
#     else:
#         my_boite.color = [0,0,250]
#     boites.append(my_boite)
# for i in range(5):
#     print (str(boites[i].name) + " "+str(boites[i].color)+"\n")


# 1.5 # Commenter lui ou 1.4
boites = []
for i in range(5):
    my_boite = Object("boite"+str(i),3,[1,1,1])
    my_boite.set_object_position([-4+i*2,0,1])
    if my_boite.position[0]<0:
        my_boite.set_object_color([250,0,0])
    elif my_boite.position[0]==0:
        my_boite.set_object_color([0,250,0])
    else:
        my_boite.set_object_color([0,0,250])
    boites.append(my_boite)
for i in range(5):
    print (str(boites[i].name) + " "+str(boites[i].color)+"\n")

"""

#### Partie 2


#print( robot)
robot1 = Robot("robot1","SCARA")
robot2 = Robot("robot2","3DDL")
table = Object("box1",3,[0.5,1,0.25])
table.set_object_position([-1,0,0.25/2])
robot1.set_base_position([-1,-0.2,0.4])
robot2.set_base_position([-1,0.2,0.28])
product = Object("product",5,[0.1,0.1,0.01])
product.set_object_position([-1,-0.4,0.25+0.01/2])
product.set_object_color([255,0,0])

robot1.move_robot("left")
robot1.set_object(product)
robot1.move_robot("middle")
robot1.release_object(product)
robot1.move_robot("left")




