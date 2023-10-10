from .Package.Mesures import *
from .Package.Parametres import *
from .Package.Instruments import *

parametres_defautARV = S21ARV()
s21 = S21(obj_parametres=parametres_defautARV)
s2vna = S2VNA(obj_mesure=s21)
