from sense_hat import SenseHat


class IoTDevice:
    sense = SenseHat()

    def __init__(self, name, descr):
        self.name = name
        self.description = descr

    def getRepresentation(self):
        result = {
            "name": self.name,
            "description": self.description  # nom à changer ou est-ce que ça passe lors de l'override ?
        }
        return result
