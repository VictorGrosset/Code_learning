import pyvisa
import time
from Mesures import *  # Ne sert que si on utilise un nom de Mesure.py


class Instrument:  # À rendre full abstraite, c'est juste pour l'exemple, héritage d'interface si possible
    def __init__(self, obj_mesure):
        self.rm = pyvisa.ResourceManager('@sim')
        self.instrument_address = None
        self.instrument = None
        self.mesure = None
        self.terminaison_char = ''
        self.timeout = None
        self.delay = None

    def set_instrument_address(self,
                               instrument_address: str):  # CHoisir s'il faut définir à l'instanciation ou par méthode set
        pass

    def set_terminaison_char(self, character: str):
        pass

    def set_delay(self, delay: int):
        pass

    def set_timeout(self, timeout: int):
        pass

    def open_instrument(self):
        pass

    def close_instrument(self):
        pass

    def do_measure(self):
        pass


class VNA(Instrument):  # Est-ce que c'est nécessaire d'avoir la classe fille VNA comme moyen de gérer les compositions
    def __init__(self, obj_mesure):
        super().__init__(obj_mesure)
        self.instrument_address = None
        self.instrument = None
        self.mesure = None
        self.terminaison_char = ''
        self.timeout = None  # A implementer
        self.delay = None  # A implementer

    def set_instrument_address(self,
                               instrument_address: str):  # CHoisir s'il faut définir à l'instanciation ou par méthode set
        pass

    def set_terminaison_char(self, character: str):
        pass

    def set_delay(self, delay: int):
        pass

    def set_timeout(self, timeout: int):
        pass

    def open_instrument(self):
        pass

    def close_instrument(self):
        pass

    def do_measure(self):
        pass


class S2VNA(VNA):
    def __init(self, obj_mesure: S21):
        super().__init__(obj_mesure)
        self.instrument_address = None
        self.instrument = None
        self.mesure = obj_mesure
        self.terminaison_char = ''
        self.timeout = None
        self.delay = None

    def set_instrument_address(self,
                               instrument_address: str):  # CHoisir s'il faut définir à l'instanciation ou par méthode set
        self.instrument_address = instrument_address

    def set_terminaison_char(self, character: str):
        self.terminaison_char = character

    def set_delay(self, delay: int):
        self.delay = delay

    def set_timeout(self, timeout: int):
        self.timeout = timeout

    def open_instrument(self):
        self.instrument = self.rm.open_resource(self.instrument_address)

    def close_instrument(self):
        self.instrument.close_instrument()

    def do_measure(self):
        write = 1
        list_command = self.mesure.get_list_command()
        for command in list_command:
            if write == 1:  # Trouver moyen de savoir si c'est write ou query
                self.instrument.write(list_command(command))
            else:
                self.instrument.write(list_command(command))
            time.sleep(self.delay)
