from Package.Mesures import *
from Package.Parametres import *
from Package.Instruments import *

parametres_S21_lin = S21ARV()  # Instanciation de Parametre pour S21
s21 = S21(obj_parametres=parametres_S21_lin)  # Instanciation de Mesure composé d'un objet de type Parametre
s2vna = S2VNA(obj_mesure=s21)
s2vna.open_comm_instrument('TCPIP0::localhost::5025::SOCKET', '\n', 10000, 0.1, 9600)
s2vna.do_measure()
s2vna.export_data()
s2vna.close_comm_instrument()

#Todo Si on a le temps, créer une classe JSON decoder pour importer des parametres en .mescouilles. J'ai des exemples vu j'ai bien fini le TP dessus. C'est vraiment pas long
#Todo Importer la courbe dans un .pdf
#Todo Faire en sorte que Instrument utilise Mesures et Parametre. Ce sera plus facile d'intéragir avec ces classes
#Todo: prévoir des méthodes d'import et de traitement des données brutes dans une classe traitement. Ce n'est pas à Instrument de gérer çà, mais par manque de temps...
#Todo: définir une méthode par défaut pour l'export quite à override ensuite suivant les types de résultat



