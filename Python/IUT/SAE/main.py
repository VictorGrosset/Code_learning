from Package.Mesures import *
from Package.Parametres import *
from Package.Instruments import *

parametres_S21_lin = S21ARV()  # Instanciation de Parametre pour S21
s21 = S21(obj_parametres=parametres_S21_lin)  # Instanciation de Mesure composé d'un objet de type Parametre
s2vna = S2VNA(obj_mesure=s21)
s2vna.set_instrument_address("TCPIP0::localhost::5025::SOCKET")
s2vna.set_terminaison_char("\n")
s2vna.set_delay(1)
s2vna.set_timeout(10)
s2vna.open_instrument()
s2vna.do_measure()


#Todo finir d'implémenter result = self.instrument.query(command+self.terminaison_char) Prioritaire

#Todo screenshot = HCOPy:IMMediate en command

#Todo exporter screenshot dans un PDF

#Todo Si on a le temps, créer une classe JSON decoder pour importer des parametres en .mescouilles. J'ai des exemples vu
#j'ai bien fini le TP dessus. C'est vraiment pas long

#Todo Coup de ménage dans le code


