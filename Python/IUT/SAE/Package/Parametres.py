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
        self.f_min = 3e9
        self.f_max = 6e9
        self.format = "sLin"
        self.type_mesure = "S21"
        self.f_marker = 4.18535e9
        self.nb_pt = 1001
        self.rbw = 1e6

    def get_param(self):
        dico_param_arv = {
            "f_min": self.f_min,
            "f_max": self.f_max,
            "format": self.format,
            "type_mesure": self.type_mesure,
            "f_marker": self.f_marker,
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
