import pyvisa
from Mesures import *

class Instrument :
    def __init__(self) :
        self.rm = pyvisa.ResourceManager()
        self.mesure = None
        self.char_terminaison = None

    def faire_mesure(self) :
        pass

class VNA(Instrument):
    def __init__(self, obj_mesure):
        super().__init__()
        self.mesure = None
        self.char_terminaison = '\n'


class S2VNA(VNA):
    def __init(self, obj_mesure):
        super().__init__()
        self.mesure = obj_mesure


    def faire_mesure(self):
        list_command = self.mesure.get_list_command()
        for command in list_command:
            if write:
                instr.write(command)
            else
                instr.query(command)
            wait(1)
