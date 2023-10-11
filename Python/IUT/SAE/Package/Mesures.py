#from Parametres import *


class Mesure:
    def __init__(self):
        self.parametres = None
        self.result = 0 #a voir
        self.list_command = []

    def reglages(self, parametres): #Doute sur l'utilité
        pass

    def mesure(self):
        pass

    def get_list_command(self):
        pass


class S21(Mesure):
    def __init__(self, obj_parametres):
        super().__init__()
        self.parametres = obj_parametres
        # self.result = 0
        # self.list_command = []

    def reglages(self, parametres):
        pass

    def mesure(self):
        parameters_values = self.parametres.get_param()
        self.list_command.append(f'SYSTem:PRESet')
        self.list_command.append(f'SENS:SWE:POIN {parameters_values["nb_pt"]}')
        self.list_command.append(f'CALCulate1:FORMat {parameters_values["format"]}')
        self.list_command.append(f'CALCulate1:PARameter1:DEF {parameters_values["type_mesure"]}')
        self.list_command.append(f'CALCulate1:PARameter1:SEL ')
        self.list_command.append(f'SENS:BAND {parameters_values["rbw"]}')
        self.list_command.append(f'INITiate1:CONTinuous ON')
        self.list_command.append(f'CALCulate1:MARKer1 ON')
        self.list_command.append(f'CALCulate1:MARKer1: {parameters_values["f_marker1"]}')
        self.list_command.append(f'CALCulat1:MARKer1:Y?')  # Attention, c'est une command query. Il faudrait un flag
        # pour savoir si c'est write ou query

    def get_list_command(self):
        self.mesure()
        return self.list_command


class Vrms:
    def __init__(self, obj_parametres):
        pass

    def reglages(self):
        pass

    def mesure(self):
        pass
