class Mesure:
    def __init__(self, obj_parametre):
        self.parametres = None
        self.list_command = []

    def mesure(self):
        pass

    def get_list_command(self):
        pass
    

class ARV(Mesure):
    def __init__(self, obj_parametre):
        super().__init__(obj_parametre)

    def mesure(self):
        pass

    def get_list_command(self):
        pass


class S21(ARV):
    def __init__(self, obj_parametres):
        super().__init__(obj_parametres)
        self.parametres = obj_parametres
        self.list_command = []

    def mesure(self):
        parameters_values = self.parametres.get_param()
        self.list_command.append(f'*IDN?')
        self.list_command.append(f'*RST; *CLS')
        self.list_command.append(f'SYST:DISP:UPD ON')
        self.list_command.append(f'INIT:CONT OFF')
        self.list_command.append(f'SENSe1:FREQuency:STARt {parameters_values["f_min"]}')
        self.list_command.append(f'SENSe1:FREQuency:STOP {parameters_values["f_max"]}')
        self.list_command.append(f'SENSe1:BAND {parameters_values["rbw"]}')
        self.list_command.append(f'SENSe:SWEep:POINts {parameters_values["nb_pt"]}')
        self.list_command.append(f'CALCulate1:FORMat {parameters_values["format"]}')
        self.list_command.append(f'CALCulate1:PARameter1:DEF {parameters_values["type_mesure"]}')
        self.list_command.append(f'CALCulate1:MARKer1 ON')
        self.list_command.append(f'CALCulate1:MARKer1:X {parameters_values["f_marker"]}')
        self.list_command.append(f'INIT; *WAIt')
        self.list_command.append(f'CALCulate1:MARKer1:Y?')

    def get_list_command(self):
        self.mesure()
        return self.list_command


class Vrms(Mesure):
    def __init__(self, obj_parametres):
        super.__init__(obj_parametres)

    def mesure(self):
        pass

    def get_list_command(self):
        pass
