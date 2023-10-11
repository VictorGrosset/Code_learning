from .device import IoTDevice


class Actuator(IoTDevice):
    def __init__(self, name, descr):
        super().__init__(name, descr)
        self.last_action = None
        self.last_params = None

    def doAction(self, action, params):
        self.last_action = action
        self.last_params = params
        pass

    def getLastAction(self):
        result = {
            "action": self.last_action,
            "params": self.last_params
        }
        return result


class LedActuator(Actuator):
    def __init__(self, x, y):
        super().__init__(f"L{x}{y}", f"Led at ({x},{y})")
        self.position = {"x": x, "y": y}
        self.color = [0, 0, 0]

    def doAction(self, action, params: list):
        if action == "on":
            self.color = params
            self.last_action = "on"
            self.last_params = params

            # TO-DO : Exécuter l'action sur la LED
            # Un objet de la classe SenseHat est déja accéssible ici : IoTDevice.sense
            # ici le paramètre params est une liste [R, G, B]
            # les deux fonctionnent ?
            # super().sense.set_pixel(self.position["x"], self.position["y"], self.color)
            IoTDevice.sense.set_pixel(self.position["x"], self.position["y"], self.color[0], self.color[1], self.color[2])
        elif action == "off":
            self.color = params
            self.last_action = "off"
            self.last_params = params
            # TO-DO : Exécuter l'action sur la LED
            # Un objet de la classe SenseHat est déja accéssible ici : IoTDevice.sense
            # ici le paramètre params est une liste [R, G, B]
            IoTDevice.sense.set_pixel(self.position["x"], self.position["y"], 0, 0, 0)

    def getRepresentation(self):
        result = super().getRepresentation()
        result["type"] = "LED_ACTUATOR"
        result["position"] = self.position
        return result
