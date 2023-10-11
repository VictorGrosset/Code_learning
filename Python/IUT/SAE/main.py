from Package.Mesures import *
from Package.Parametres import *
from Package.Instruments import *

parametres_S21_lin = S21ARV()  # Instanciation de Parametre pour S21
s21 = S21(obj_parametres=parametres_S21_lin)  # Instanciation de Mesure composé d'un objet de type Parametre
s2vna = S2VNA(obj_mesure=s21)
s2vna.open_instrument()
s2vna.do_measure()


