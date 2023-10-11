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
        self.list_command.append(f'*RST; *CLS')
        self.list_command.append(f'SENSe1:FREQuency:STARt {parameters_values["f_min"]}')
        self.list_command.append(f'SENSe1:FREQuency:STOP {parameters_values["f_max"]}')
        self.list_command.append(f'SENSe1:BAND {parameters_values["rbw"]}')
        self.list_command.append(f'SENSe:SWE:POIN {parameters_values["nb_pt"]}')
        self.list_command.append(f'CALCulate1:FORMat {parameters_values["format"]}')
        self.list_command.append(f'CALCulate1:PARameter1:DEF {parameters_values["type_mesure"]}')
        self.list_command.append(f'CALCulate1:MARKer1 ON')
        self.list_command.append(f'CALCulate1:MARKer1:X {parameters_values["f_marker"]}')
        self.list_command.append(f'CALCulate1:MARKer1:Y?')
        self.list_command.append(f'INITiate1:CONTinuous ON')


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
