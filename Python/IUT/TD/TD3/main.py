class Robot:
    def __init__(self, nom, vitesse_max):
        self.nom = nom
        self.vitesse_max = vitesse_max

    def afficher_infos(self):
        return f"Je m'appelle: {self.nom} et ma vitesse est {self.vitesse_max} m/s"

    # Robot est une classe abstraite, car executer_tache n'est pas définie. (Au moins une fonction non définie)
    def executer_tache(self):
        pass


class RobotNettoyeur(Robot):
    def __init__(self, nom, vitesse_max, pos_charge_x, pos_charge_y):
        super().__init__(nom, vitesse_max)
        self.pos_charge_x = pos_charge_x
        self.pos_charge_y = pos_charge_y
        self.niveau_charge = 0

    def nettoyer(self):
        return "Je nettoie!"

    def afficher_infos(self):
        return (f"{super().afficher_infos()}.\n"
                f"Ma station de charge est positionnée à x: {self.pos_charge_x} et y: {self.pos_charge_y}\n"
                f"Mon niveau de charge est de {self.niveau_charge} %")

    def executer_tache(self):
        return self.nettoyer()


# Doit avoir le même ordre de paramètres que celui de la classe héritée
class RobotAspirateur(RobotNettoyeur):
    def __init__(self, nom, vitesse_max, pos_charge_x, pos_charge_y):
        super().__init__(nom, vitesse_max, pos_charge_x, pos_charge_y)
        self.etat_reservoir = "vide"

    def aspirer(self):
        return "J'aspire !"

    def nettoyer(self):
        self.aspirer()


class Salle:
    def __init__(self, numero, surface):
        self.numero = numero
        self.surface = surface


r1 = Robot("robot1", 5)
rn1 = RobotNettoyeur(0, 0, "robot_nettoyeur1", 2)
print(r1.afficher_infos())
print(rn1.afficher_infos())
print(rn1.executer_tache())
print()
robot_aspi1 = RobotAspirateur("Roomba", 4, 12, 30)
print(robot_aspi1.afficher_infos())
print(robot_aspi1.nettoyer())
