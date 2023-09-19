#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import time                                                                             #pour fonction attendre               
import datetime                                                                         #pour récuperer les heures de fonctionnement
import os                                                                               #pour controler taille fichier        

verif_fichier = os.stat("compteur_ampoule.txt").st_size                                 #controle taille fichier.txt
fichier_horodatage = open("compteur_ampoule.txt", "r+")                                 #ouvre le fichier.txt dans fichier_horodatage avec l'attribut lecture et écriture
 
if(verif_fichier == 0):                                                                 #si taille fichier.txt = 0  
    init = datetime.datetime(2022, 1 , 1 , 0 , 0 , 0)                                   #valeur d'initialisation
    fichier_horodatage.write(init.strftime("%H:%M")) 
    for line in fichier_horodatage:                                                     #on garde que heures et minutes
        compteur = line                                                                 #on stocke dans variable compteur (string)

else:                                                                                   #sinon
    for line in fichier_horodatage:                                                     #on copie la seule ligne presente
        compteur = line                                                                 #dans compteur (string)
        
fichier_horodatage.close()                                                              #on ferme le fichier


now = datetime.datetime.now()                                                           #horodatage du lancemenet du programme dans now (string formatée en date)
debut_h = now.strftime("%H")                                                            #on garde que la heure
debut_m = now.strftime("%M")                                                            #et les minutes séparements pour faire des opérations desssus
#h_debut = debut_h + ":" + debut_m                                                      #faculatif : on peut reconstituer l'heure du début en concatenant

try:                                                                                    #on execute une boucle infinie
    while True:
        for i in range(1000):
            print(i)
            time.sleep(1)  
    pass
#test


except KeyboardInterrupt:                                                               #on detecte une interruption CTRL+C par exemple
    then = datetime.datetime.now()                                                      #horodatage de fin d'essai dans then (string formatée en date)
    fin_h = then.strftime("%H")                                                         #on garde que la heure
    fin_m = then.strftime("%M")                                                         #et les minutes séparements pour faire des opérations desssus
    #h_fin = fin_h + ":" + fin_m                                                        #faculatif : on peut reconstituer l'heure du début en concatenant

    
    delta_h = int(fin_h) - int(debut_h)                                                 #difference des heures début et fin avec conversion des string en entier 
    delta_m = int(fin_m) - int(debut_m)                                                 #pour pouvoir faire l'opération arithémtique
    #str_delta_t = str(delta_h) + ":" + str(debut_m)                                    #faculatif : on peut reconstituer l'heure du début en concatenant


    compteur_list = compteur.split(":")                                                 #separation d'une chaine de caractères separée par deux points en une liste de chaine de caractère
    compteur_h = compteur_list[0]                                                       #acces à l'index 0 de la liste pour afficher le premier terme
    compteur_m = compteur_list[1]                                                       #acces à l'index 1 de la liste pour afficher le second terme
    

    compteur_h_final = int(compteur_h) + delta_h                                        #calcul heure finale avec  conversion des string en entier pour calcul arithmetique
    compteur_m_final = int(compteur_m) + delta_m                                        #calcul heure finale avec  conversion des string en entier pour calcul arithmetique

    if compteur_m_final < 60:                                                           #si minutes inferieures à 60
        if compteur_m_final < 10:                                                       #si minutes inferieures à 10
            compteur_final = str(compteur_h_final) + ":" + "0" + str(compteur_m_final)  #on rajoute la string 0 devant minutes pour avoir le format 00m  
        else:                                                                           #sinon
            compteur_final = str(compteur_h_final) + ":" + str(compteur_m_final)        #on laisse tel quel


    else :                                                                              #sinon (minutes >= 60)
        compteur_h_final = compteur_h_final + 1                                         #on ajoute 1 aux heures
        compteur_m_final = compteur_m_final - 60                                        #on soustraie 60 aux minutes
        if compteur_m_final < 10:                                                       #si minutes inferieures à 60
            compteur_final = str(compteur_h_final) + ":" + "0" + str(compteur_m_final)  #on rajoute la string 0 devant minutes pour avoir le format 00m 
        else:
            compteur_final = str(compteur_h_final) + ":" + str(compteur_m_final)        #on laisse tel quel 

    fichier_horodatage = open("compteur_ampoule.txt", "w")                              #on rouvre le fichier.txt avec l'attribut écriture
    fichier_horodatage.write(compteur_final)                                            #on remplace l'ancienne valeur par compteur final
    fichier_horodatage.close()                                                          #on referme le fichier.txt