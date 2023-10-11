class Parametre:
    def __init__(self):
        pass
    def get_param(self):
        pass


class DefaultARV(Parametre):
    def __init__(self):
        super().__init__()
        self.f_min = 100000000  # 1 MHz
        self.f_max = 2000000000  # 2 GHz
        self.nb_pt = 100
        self.Pref = -10  # dBm

    def get_param(self):
        dico_param_arv = {
            "fmin": self.f_min,
            "fmax": self.f_max,
            "pts": self.nb_pt,
            "puissance": self.Pref
        }
        return dico_param_arv


class S21ARV(DefaultARV):
    def __init__(self):
        super().__init__()
        self.format = "sLin"  # Smith linéaire
        self.type_mesure = "S21"  # S21
        self.f_marker1 = 1e6  # 1 MHz
        self.nb_pt = 101  # 101 points
        self.rbw = 100e3  # 100 kHz

    def get_param(self):
        dico_param_arv = {
            "format": self.format,
            "type_mesure": self.type_mesure,
            "f_marker1": self.f_marker1,
            "nb_pt": self.nb_pt,
            "rbw": self.rbw
        }
        return dico_param_arv


class DefaultOscillo(Parametre):
    def __init__(self):
        super().__init__()
        self.time_base = 0.001  # 1 ms
        self.amplitude = 3  # V
        self.Zin = 1000000  # Impédence d'entrée 1 M Ohm

    def get_param(self):
        dico_param_oscillo = {
            "tps": self.time_base,
            "ampl": self.amplitude,
            "z": self.Zin
        }
        return dico_param_oscillo
