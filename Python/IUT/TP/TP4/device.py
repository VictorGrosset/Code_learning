from sense_hat import SenseHat
class IoTDevice:
    sense = SenseHat()

    def __init__(self, name, descr):
        self.name = name
        self.descirption= descr
    
    def getRepresentation(self):
        result = {
            "name" : self.name,
            "description" : self.descirption
        }
        return result