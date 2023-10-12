
import pyvisa
import numpy as np
import datetime
import pyscreenshot
date = datetime.date.today()
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import A4
from reportlab.lib import colors
print('date :', date) # Permet d'avoir la date

print('Technicien : Olfi sedid ; Darwich rayane') # Nom

def screen():
    print("Pour faire une capture d'écran du résultat il faut écrire 'oui' et allé sur le logiciel RVNA et attendre 5 secondes")
    screenn = input("voulez vous faire une capture d'écran du résultat?")
    if(screenn == 'oui'):
        import time
        time.sleep(5)
        image = pyscreenshot.grab()
        #screenshot=pyscreenshot.grab(bbox=(10,10,500,500))
        image.show()
        image.save("Mesure.png")
    return screenn

def countdown(t):
    import time
    while t:
        m,s = divmod(t,60)
        timer = '{:02d}:{:02d}'.format(m,s)
        print(timer, end="\r")
        time.sleep(1)
        t -= 1
    print("La capture d'écran a été faite")

def initialisation():
    rm = pyvisa.ResourceManager()
    arv = rm.open_resource("TCPIP0::localhost::5025::SOCKET")
    arv.read_termination = '\n'
    arv.write_termination = '\n'
    arv.baud_rate = 9600
    print(arv.query('*IDN?'))
    return arv


def configuration(arv):

    arv.write("SYST:PRES")
    frequence = input('choisir une fréquence en MHz : ')
    arv.write("SENS:FREQ:CENT " + frequence+'MHz')
    arv.write("SENS:FREQ:SPAN 0MHz")
    return frequence

 
def calibration(arv):
    print("Brancher un connecteur ou un court-circuit avant de commencer la calibration."  )
    Calibrage = input("Choisir la calibration 'OPEN' ou 'SHORT' : ")
    if (Calibrage == 'OPEN' ):
        arv.write("SENS:CORR:COLL:CKIT 1") #démarre la calibration
        arv.write("SENS:CORR:COLL:OPEN 1")
        rep = arv.query("*OPC?")
        arv.write("SENS:CORR:COLL:METH:OPEN 1")
        arv.write("SENS:CORR:COLL:SAVE")
    elif(Calibrage == 'SHORT'):
        arv.write('SENS:CORR:COLL:SHORT 1')  
        rep = arv.query("*OPC?")
        arv.write('SENS:CORR:COLL:METH:SHORT 1') 
        arv.write('SENS:CORR:COLL:SAVE')
    return rep, Calibrage
 

def type_mesure(arv):
    trace = input("choisir le format de la trace 'smith(lin)' ou 'smith(log)' : ")
    if ( trace == 'smith(lin)'):
        arv.write("CALCulate1:FORMat SLin")
        arv.write("CALC:PAR:DEF S11")
        arv.write("CALCulate1:MARKer 1")
    elif(trace == 'smith(log)'):
        arv.write('CALCulate1:FORMat SLOG')
        arv.write('CALCulate1:MARKer 1')
    return trace

"""
def type_mesurelog(arv):
    arv.write('CALCulate1:FORMat SLOG')
    arv.write('CALCulate1:MARKer 1')
"""


def mesures(arv, trace):
    if (trace == 'smith(lin)' ):
        print("Avant de commenncer les mesures veuillez brancher la carte à mesurer.")
        ok = input("Commencer la mesure :")
        if ( ok == 'oui'):
            print("test du coefficient de réflexion en linéaire")
            arv.write('CALCulate:FUNCtion:TYPE MEAN')
            arv.write('CALCulate:FUNCtion:EXECute')
            resultat = arv.query('CALCulate:SELected:FUNCtion:DATA?')
            res = resultat.split(",")
            res1 = float(res[0])
            print("le coefficient de réflexion égal à ", res1)
            if(res1 <= 0.18):
                print("le résultat est valide")
            else :
                print("le résultat n'est pas valide")
                
    elif(trace == 'smith(log)'):
        print("Avant de commenncer les mesures veuillez brancher la carte à mesurer.")
        ok = input("Commencer la mesure :")
        if ( ok == 'oui'):
            print("test du coefficient de réflexion en decibel")
            arv.write('CALCulate:FUNCtion:TYPE MEAN')
            arv.write('CALCulate:FUNCtion:EXECute')
            resultat = arv.query('CALCulate:SELected:FUNCtion:DATA?')
            res = resultat.split(",")
            res1 = float(res[0])
            print("le coefficient de réflexion égal à ", res1)
            if(res1 <= -15):
                print("le résultat est valide ")
            else :
                print("le résultat n'est pas valide")
    return res1


arv =initialisation()
frequence = configuration(arv)
Calibrage= calibration(arv)
trace = type_mesure(arv)
res1 = mesures(arv, trace)
screenn = screen()
if (screenn == 'oui'):
    countdown(int(5))


                                            ##############
                                            #Fonction PDF#
                                            ##############

def Certificat(c):

    c = canvas.Canvas("Certificat.pdf", pagesize=letter)
    c.drawString(370, 40, "Technicien : Sedid OLFI ; Rayane Darwich")
    c.drawString(30, 40, "Année: 2022/2023")
    c.drawImage('ups.jpeg', 10, 710, 200, 70)
    c.drawImage('saeHF.png', 110, 270, 400, 300)
    c.drawString(500, 750, "Date : " + str(date))
    c.showPage()
    c.drawString(370, 40, "Technicien : Sedid OLFI ; Rayane Darwich")
    c.drawString(30, 40, "Année: 2022/2023")
    c.drawImage('ups.jpeg', 10, 710, 200, 70)
    c.drawString(500, 750, "Date : " + str(date))
    c.setFont('Helvetica', 20)
    c.drawString(50, 680, "Compte rendu des mesures :")
    c.setFont('Helvetica', 12)
    c.drawString(50, 650, "Référence du logiciel et de l'appareil + numéro de série : - TCPIP0::localhost::5025::SOCKET")
    c.drawString(50, 630, "-"+str(arv.query('*IDN?')))
    c.drawString(50, 610, "Fréquence : " + str(frequence)+"MHz")
    c.drawString(50, 590, "Calibrage: " + str(Calibrage))
    c.drawString(50, 570, "Le format de la trace est en : "+ str(trace))
    if(trace == 'smith(lin)'):
        c.setFillColorRGB(1, 0, 0)
        c.setFont('Helvetica', 14)
        c.drawString(50, 550, "Test du coefficient de réflexion en linéaire, il doit être inférieur à 0.18 pour que")
        c.drawString(50, 530, " le circuit soit conforme :")
        c.setFillColor(colors.black)
        c.setFont('Helvetica', 12)
        c.drawString(50, 510, "Le coefficient de réflexion est de : " + str(res1)+" en linéaire")
        if(res1 <= 0.18):
            c.drawString(50, 490, "Conclusion: Le coefficient de reflexion est bien inférieur à 0,18 avec une valeur de " + str(res1))
            c.drawString(50, 470,"en linéaire donc LE CIRCUIT EST CONFORME")
        else :
            c.drawString(50, 490, "Conclusion: Le coefficient de réflexion n'est pas inférieur à 0,18 avec une valeur de " + str(res1))
            c.drawString(50, 470, "en linéaire donc LE CIRCUIT N'EST PAS CONFORME")
    elif(trace == 'smith(log)'):
        c.setFillColorRGB(1, 0, 0)
        c.setFont('Helvetica', 14)
        c.drawString(50, 550, "Test du coefficient de réflexion en decibel, il doit être inférieur à -15 dB pour que")
        c.drawString(50, 530, " le circuit soit conforme :")
        c.setFillColor(colors.black)
        c.setFont('Helvetica', 12)
        c.drawString(50, 510, "Le coefficient de réflexion est de : " + str(res1)+" en dB")
        if(res1 <= -15):
            c.drawString(50, 490, "Conclusion: Le coefficient de reflexion est bien inférieur à -15 dB avec une valeur de " + str(res1)+" en dB")
            c.drawString(50, 470,"donc LE CIRCUIT EST CONFORME")
        else :
            c.drawString(50, 490, "Conclusion: Le coefficient de réflexion n'est pas inférieur à -15 avec une valeur de " + str(res1)+" en dB")
            c.drawString(50, 470, "donc LE CIRCUIT N'EST PAS CONFORME")
    if(screenn == 'oui'):
        c.drawImage('Mesure.png', 60, 160, 500, 281)
    c.save()

c = canvas.Canvas("Certificat.pdf", pagesize=letter)
Certificat(c)
