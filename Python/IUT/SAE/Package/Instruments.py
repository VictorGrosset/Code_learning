import pyvisa
import time
import csv
import csv2pdf
import plotly

# import csv
# import matplotlib

class Instrument:

    rm = pyvisa.ResourceManager('@py')  # Attribut de classe = variable globale de classe

    def __init__(self, obj_mesure):
        self.instrument_address = str
        self.instrument = str  # rm.open_ressource(instrument_address)
        self.mesure = obj_mesure
        self.terminaison_char = str
        self.timeout = int
        self.latency = float
        self.data = list
        self.value_list_unformated = str
        self.frequency_list_unformated = str

    def open_comm_instrument(self, instrument_address: str, terminaison_char: str, timeout: int, latency: float, baudrate: int):
        pass

    def close_comm_instrument(self):
        pass

    def do_measure(self):
        pass

    def export_data(self):
        pass


class VNA(Instrument):  # Est-ce que c'est nécessaire d'avoir la classe fille VNA comme moyen de gérer les compositions
    def __init__(self, obj_mesure):
        super().__init__(obj_mesure)

    def open_comm_instrument(self, instrument_address: str, terminaison_char: str, timeout: int, latency: float, baudrate: int):
        pass

    def close_comm_instrument(self):
        pass

    def do_measure(self):
        pass

    def export_data(self):
        pass


class S2VNA(VNA):
    def __init__(self, obj_mesure):
        super().__init__(obj_mesure)

    def open_comm_instrument(self, instrument_address: str, terminaison_char: str, timeout: int, latency: float, baudrate: int):
        self.instrument_address = instrument_address
        self.terminaison_char = terminaison_char
        self.timeout = timeout
        self.latency = latency
        self.instrument = self.rm.open_resource(self.instrument_address)
        self.instrument.timeout = self.timeout
        self.instrument.read_termination = self.terminaison_char
        self.instrument.write_termination = self.terminaison_char

    def close_comm_instrument(self):
        self.instrument.close()

    def do_measure(self):
        list_command = self.mesure.get_list_command()
        for command in list_command:
            if "?" in command:
                result = self.instrument.query(command)
                print(result)
            else:
                self.instrument.write(command)
            time.sleep(self.latency)

    def export_data(self):
        self.frequency_list_unformated = self.instrument.query('CALC:DATA:XAX?')  # fréquences
        frequency_list = self.frequency_list_unformated.split(',')
        nb_line = len(frequency_list)

        self.value_list_unformated = self.instrument.query('CALCulate1:DATA:FDATa?')  # valeurs
        value_list = self.value_list_unformated.split(',')
        magnitude = []
        phase = []
        for index in range(0, nb_line * 2, 1):
            if index % 2 == 0:
                magnitude.append(value_list[index])
            else:
                phase.append(value_list[index])


        self.data = []
        self.data = list(
            zip(frequency_list, magnitude, value_list))  # Passe de 3 lignes 1001 colonnes à 1001 lignes 3 colonnes

        with open('data.csv', "w") as data_file:
            data_writer = csv.writer(data_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
            data_writer.writerow(['Fréquence (MHz)', 'Magnitude (U)', 'Phase (°)'])
            data_writer.writerows(self.data)
        csv2pdf.convert("data.csv", "data.pdf", headersize=10, delimiter=',')
        self.data.clear()
        curve = plotly.graph_objs.Figure(plotly.graph_objs.Scattersmith(imag=phase, real=magnitude))
        curve.show()

        self.frequency_list_unformated = ""
        self.value_list_unformated = ""