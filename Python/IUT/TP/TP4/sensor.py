from .device import IoTDevice

class Sensor(IoTDevice):
    def __init__(self, name, descr):
        super().__init__(name, descr)
        self.last_value = 0
        self.history = [None] * 10
        self.history_idx = 0

    def saveToHistory(self):
        self.history[self.history_idx] = self.last_value
        self.history_idx += 1
        if self.history_idx == 10:
            self.history_idx = 0
    
    def getHistory(self):
        return self.history
    
    def getValue(self):
        pass



class TemperatureSensor(Sensor):
    def getValue(self):
        # To-Do : Récupérer la valeur de la température
        # Un objet de la classe SenseHat est déja accéssible ici : IoTDevice.sense
        
        super().saveToHistory()
        return  self.last_value
    
    def getRepresentation(self):
        result = super().getRepresentation()
        result["type"] = "TEMP_SENSOR"
        result["unit"] = "° C"
        return result
    
class HumiditySensor(Sensor):
    def getValue(self):
        # To-Do : Récupérer la valeur de l'humidité
        # Un objet de la classe SenseHat est déja accéssible ici : IoTDevice.sense

        super().saveToHistory()
        return  self.last_value
    
    def getRepresentation(self):
        result = super().getRepresentation()
        result["type"] = "HUM_SENSOR"
        result["unit"] = "%"
        return result
    
class PressureSensor(Sensor):
    def getValue(self):
        # To-Do : Récupérer la valeur de la pression
        # Un objet de la classe SenseHat est déja accéssible ici : IoTDevice.sense

        super().saveToHistory()
        return  self.last_value
    
    def getRepresentation(self):
        result = super().getRepresentation()
        result["type"] = "PRES_SENSOR"
        result["unit"] = "mbar"
        return result
