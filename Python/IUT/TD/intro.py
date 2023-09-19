import math

#calcul aire rectancle
'''
def calcul_aire_périmètre() :
    print("Bienvenue dans le programme de calcul d'aire d'un rectangle")
    print("Rentrez la largeur du rectangle en cm")
    longueur = int(input())
    print("Rentrez la largeur du rectangle cm")
    largeur = int(input())
    print ("L'aire du rectangle défini est ", longueur*largeur, " cm²")
    print ("Le périmètre du rectangle défini est", 2*longueur+2*largeur, " cm")
calcul_aire_périmètre()
'''

#calcul nature d'un nombre
'''
def nature_nombre(a):
    if a > 0 :
        print("Le nombre est positif")
    elif a == 0 :
        print("Le nombre est nul")
    else :
        print("Le nombre est négatif")
Calcul nature du nombre
a = 0
a = int(input("Rentrez un nombre"))
nature_nombre(a)
'''

#Racine d'un polynome du second degré
'''
def concaten_polynome(a, b, c) :
    if a > 0 and b > 0 :
        polynome = "f(x) = " + str(a) + "x²" + signe_plus + str(b) + "x" + signe_plus + str(c)

    elif a > 0 and b < 0 :
        polynome = "f(x) = " + str(a) + "x²" + signe_plus + str(b) + "x" + signe_moins + str(c)

    else :
        polynome = "f(x) = " + str(a) + "x²" + signe_moins + str(b) + "x" + signe_moins + str(c)

def resolution_equation_second_degre(a, b, c) :
    delta = b*b - 4 * a * c
    signe_plus = "+"
    signe_moins = "-"

    concaten_polynome(a, b, c)

    if delta > 0 :
        r1 = (-b - delta**0.5) / (2 * a)
        r2 = (-b + delta**0.5) / (2 * a)
        print("Le polynome ", polynome, " du 2nd degré possède deux solutions dans R qui sont r1=", r1, " et r2 =", r2)

    elif delta == 0 :
        r1 = (-b) / (2 * a)
        print("Le polynome ", polynome, " du second degré ne possède qu'une seule solution dans R r1=", r1)

    else :
        print("Le polynome", polynome, " ne possède pas de solution dans R")

print ("Rentrez les 3 coeficient a, b et c du polynome du second degré de la Forme ax²+bx+v")
a = int(input ("a ="))
b = int(input ("b ="))
c = int(input ("c ="))
resolution_equation_second_degre(a, b, c)
'''

#Calcul de factorielle n
'''
def calc_factorielle(factorielle) :
    resultat = 1
    for cpt in range (1 , factorielle, 1) :
        resultat *= cpt
    else:
        print(resultat)

factorielle = int(input("Rentrez la factorielle à calculer")) + 1
calc_factorielle(factorielle)
'''

#calcul de puissance
'''
def calc_puissance(a, b) :
    resultat = 1
    puissance = int(math.fabs(b)) + 1

    for cpt in range(1, puissance, 1) :
        resultat = resultat * a

    if b < 0 :
        resultat = 1 / resultat

    print(resultat)

print("Rentrez le nombre a à la puissance b")
a = float(input("a = "))
b = int(input("b = "))
calc_puissance(a, b)
'''

#impression sapin
'''
n = 1
nb_total_ligne = int(input("Entrez la taille du sapin en (nombre de caractères) à la base de celui-ci")) - 1
nb_espace_avant = nb_total_ligne

for ligne in range(nb_total_ligne) :

    for space in range (nb_espace_avant) :
        print(" ", end="")
    nb_espace_avant -= 1

    print("*", end="")

    for ligne in range(nb_total_ligne * 2 + 1) :
        print("*", end="")

    for caractere in range(n * 2 - 3) :
        print(" ", end="")
    print("*")
    n = n + 1


if nb_total_ligne < 10 :
    taille_tronc = 1
elif nb_total_ligne < 20 and nb_total_ligne >= 10 :
    taille_tronc = 2
else :
    taille_tronc = 3

for tronc in range (taille_tronc) :
    for space in range (nb_total_ligne) :
        print(" ", end="")
    print("|")
'''

#test condition
'''
print("bonjour")
reponse = input("Voulez vous continuer y/n")

while reponse != "y" and reponse != "n" :
    print("Erreur, donner comme réponse y ou n")
    reponse = input("Voulez vous continuer y/n")

while reponse == "y" :
    print("bonjour")
    reponse = input("Voulez vous continuer y/n")

    while reponse != "y" and reponse != "n" :
        print("Erreur, donner comme réponse y ou n")
        reponse = input("Voulez vous continuer y/n")
'''


#boncle for en while
'''
for cpt in range(10) :
    print(cpt, "bonjour for")

cpt = 0
while cpt < 10 :
    print(cpt, "Bonjour while")
    cpt += 1
'''

'''
#fonction aire rectangle
def geometrie_rectangle(geo_longueur, geo_largeur):
    #les valeurs déclarées ici ont leur portée limitée à la fonction
    geo_aire = geo_longueur * geo_largeur
    geo_perimetre = 2 * geo_longueur + 2 * geo_largeur
    #La fonction renvoie deux valeurs !
    return geo_aire, geo_perimetre

longueur = float(input("Entrez la longueur du rectangle en cm : "))
largeur = float(input("Rentrez la largeur du rectangle en cm : "))
#Les deux valeurs retournés par la fonction sont recupérés aisni
aire, perimetre = geometrie_rectangle(longueur, largeur)
print("l'aire du rectangle est égale à : " , aire, " cm²")
print("Le pérmiètre du rectangle est égal à : ",perimetre, " cm")
'''

'''
def resolution_equation_second_degre(a, b, c):
    fun_delta = float((b * b) - (4 * a * c))
    fun_nb_solution = 0

    if fun_delta > 0:
        fun_nb_solution = 2
        fun_r1 = float((-b - fun_delta ** 0.5) / (2 * a))
        fun_r2 = float((-b + fun_delta ** 0.5) / (2 * a))

    elif dun_delta == 0:
        fun_nb_solution = 1
        fun_r1 = float((-b - fun_delta ** 0.5) / (2 * a))

    else :
        fun_nb_solution = 0

    return fun_r1, fun_r2, fun_nb_solution

def concaten_polynome(a, b, c) :
    signe_plus = "+"
    signe_moins = "-"
    if a > 0 and b > 0 :
        polynome = "f(x) = " + str(a) + "x²" + signe_plus + str(b) + "x" + signe_plus + str(c)

    elif a > 0 and b < 0 :
        polynome = "f(x) = " + str(a) + "x²" + signe_plus + str(b) + "x" + signe_moins + str(c)

    else :
        polynome = "f(x) = " + str(a) + "x²" + signe_moins + str(b) + "x" + signe_moins + str(c)

    return polynome

print ("Rentrez les 3 coeficient a, b et c du polynome du second degré de la Forme ax²+bx+v")
a = int(input ("a ="))
b = int(input ("b ="))
c = int(input ("c ="))
r1, r2, nb_solution = resolution_equation_second_degre(a, b, c)

polynome = concaten_polynome(a, b, c)

if nb_solution == 2:
    print("Le polynome ", polynome, " du 2nd degré possède deux solutions dans R qui sont r1=", r1, " et r2 =", r2)

elif nb_solution == 1 :
    print("Le polynome ", polynome, " du second degré ne possède qu'une seule solution dans R r1=", r1)

else :
    print("Le polynome", polynome, " ne possède pas de solution dans R")
'''
#fonctions imbriquées
'''
def saisie_coefficient():
    print ("Rentrez les 3 coeficient a, b et c du polynome du second degré de la Forme ax²+bx+v")
    a = float(input ("a ="))
    b = float(input ("b ="))
    c = float(input ("c ="))
    return a, b, c

def calcul_delta(a, b, c):
    delta = b*b - 4*a*c
    return delta

def calul_racines(a, b, c):
    polynome = concaten_polynome(a, b, c)
    delta = calcul_delta(a, b, c)
    r1 = 0
    r2 = 0
    if delta > 0:
        nb_solution = 2
        r1 = float((-b - delta ** 0.5) / (2 * a))
        r2 = float((-b + delta ** 0.5) / (2 * a))

    elif delta == 0:
        nb_solution = 1
        r1 = float((-b - delta ** 0.5) / (2 * a))

    else :
        nb_solution = 0

    return nb_solution, r1, r2, polynome

def concaten_polynome(a, b, c) :
    signe_plus = "+"
    signe_moins = "-"
    if a > 0 and b > 0 :
        polynome = "f(x) = " + str(a) + "x²" + signe_plus + str(b) + "x" + signe_plus + str(c)

    elif a > 0 and b < 0 :
        polynome = "f(x) = " + str(a) + "x²" + signe_plus + str(b) + "x" + signe_moins + str(c)

    else :
        polynome = "f(x) = " + str(a) + "x²" + signe_moins + str(b) + "x" + signe_moins + str(c)

    return polynome

def affichage_resultats(nb_solution, solution1, solution2, polynome):
    if nb_solution == 2:
        print("Le polynome ", polynome, " du 2nd degré possède deux solutions dans R qui sont r1=", r1, " et r2 =", r2)

    elif nb_solution == 1 :
        print("Le polynome ", polynome, " du second degré ne possède qu'une seule solution dans R r1=", r1)

    else :
        print("Le polynome", polynome, " ne possède pas de solution dans R")


a, b, c = saisie_coefficient()
nb_solution, r1, r2, polynome = calul_racines(a, b, c)
affichage_resultats(nb_solution, r1, r2, polynome)
'''

#Algorithme de decomposition nombre base 10
'''
def decomposer(nombre):
    chiffre_c = nombre // 100 # // ne renvoie quele quotient
    chiffre_d = (nombre // 10) % 10
    chiffre_u = nombre % 10
    return chiffre_c, chiffre_d, chiffre_u

def composer(cent, diz, unit):
    nombre = cent * 10**2 + diz * 10*1 + unit
    return nombre

mon_nombre = 367
centaine, dizaine, unite = decomposer(mon_nombre)
n1 = composer(unite, centaine, dizaine)
n2 = composer(unite, dizaine, centaine)
n3 = composer(dizaine, unite, centaine)

print(mon_nombre)
print(n1)
print(n2)
print(n3)
'''

'''
#Test list
tab_notes = [0, 1, 2, 3, 4 ,5 ,6, 7, 8, 9]

for i in range(len(tab_notes)):
    tab_notes[i] = i * 1.5

for i in range(len(tab_notes)):
    print(i, ": ", end="")
    print(tab_notes[i])

resultat = 0
for i in range(len(tab_notes)):
    resultat += tab_notes[i]
moyenne = resultat / len(tab_notes)
print(moyenne)

tab_test = [9] * 20 #initialisation de 20 indices à la valeur 9
tab_test = [9 for i in range (20)]
tab_test.append("A string")
tab_test.append(["un tableau"])
for i in range(len(tab_test)):
    print(tab_test[i], end="")
print()
tab_test.remove("A string")
print(tab_test)

list1 = ['a' 'b' 'c']
list2 = ['d', 'e', 'c']

liste_concaten = list1 + list2
liste_multi = list1 * 2

print(liste_concaten)
print(liste_multi)

ma_matrice_1d = [0]*5
ma_matrice_2d = [[0]*5] * 5

print(ma_matrice_1d)
print(ma_matrice_2d)

for ligne in range(3):
    for colonne in range(5):
        print(ma_matrice_2d[ligne][colonne], " ", end="")
    print()

def afficher_matrice(ma_matrice_2d):
    for ligne in range(len(ma_matrice_2d)):
        for colonne in range(len(ma_matrice_2d[0])):
            print(ma_matrice_2d[ligne][colonne], " ", end= "")
        print()
'''
def afficher_matrice(ma_matrice):
    for ligne in range(len(ma_matrice)):
        for colonne in range(len(ma_matrice[0])):
            print(ma_matrice[ligne][colonne], " ", end= "")
        print()

'''
#matrice diagonale
ma_matrice = [[0, 0, 0, 0, 0] for i in range(5)]
for ligne in range(5):
    ma_matrice[ligne][ligne] = 1
'''
'''
ma_matrice1 = [[0]*2 for i in range(2)] #colonne et ligne
ma_matrice2 = [[0]*1 for i in range(2)]
ma_matrice3 = []

ma_matrice1 = [
                [1, 2],
                [3, 4]
]

ma_matrice2 = [
                [5],
                [6]
]

l_matrice1 = len(ma_matrice1)
c_matrice1 = len(ma_matrice1[0])
l_matrice2 = len(ma_matrice2)
c_matrice2 = len(ma_matrice2[0])


if c_matrice1 != l_matrice2:
    print("erreur dans la matrice")

else:
    l_matrice3 = l_matrice1
    c_matrice3 = c_matrice2
    ma_matrice3 = [[0] * len(ma_matrice2[0]) for i in range(len(ma_matrice1))]

    for ligne in range(l_matrice3):
        for colonne in range(c_matrice3):
            for k in range(c_matrice1 ): #A debugger
                ma_matrice3[ligne][colonne] += ma_matrice1[ligne][k] * ma_matrice2[k][ligne]


afficher_matrice(ma_matrice1)
afficher_matrice(ma_matrice2)
afficher_matrice(ma_matrice3)
'''
data = ["longueur", 4, "largeur", 3]
dico = {
    "Lun" : "Lundi",
    "Mar" : "Mardi",
    "Mer" : "Mercredi",
    "Jeu" : "Jeudi",
    "Ven" : "Vendredi",
    "Sam" : "Samedi",
    "Dim" : "Dimanche"
}

dico["fin"] = "Fin de la semaine"

print(dico)

for element in dico:
    print(element)

for element in dico.keys():
    print(element)

for element in dico.values():
    print(element)

for element in dico:
    print(dico[element])
