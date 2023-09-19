taille_sapin = int(input("Rentrez la taille de la base du sapin"))

if taille_sapin % 2 == 0:
    taille_sapin -= 1

colonne = 1
ligne = int(taille_sapin / 2) + 1
outer_space = int(taille_sapin / 2)

for l in range(ligne):

    for s in range(outer_space):
        print(" ", end='')
        if l == 0:
            print("*")
        else:
            print("*", end='')

            for c in range(colonne):
                print("s", end='')
            print("*")
            colonne += 2

        outer_space -= 1








'''
    if (l == ligne - 1):
        pass
    else:
        print()
    colonne += 1
'''
