from .sensor import Sensor
from .actuator import Actuator


class DeviceCollection():

    def __init__(self):
        self.devices = {}

    def addDevice(self, device):
        if not device.name in self.devices:
            self.devices[device.name] = device
        else:
            print(f"Device {device.name} is already present !")

    def removeDevice(self, device):
        if device.name in self.devices:
            self.devices.pop(device.name)
        else:
            print(f"Device {device.name} does not exist !")    

    def getDeviceCollection(self):
        result = {}
        for devName, device in self.devices.items():
            result[devName] = device.getRepresentation()
        return result
    
    def getDeviceList(self):
        result = {
            "sensors" : self.getDeviceListByType(Sensor),
            "actuators" : self.getDeviceListByType(Actuator)
        }
        return result
    
    def getDeviceListByType(self, type):
        result = []
        for devName, device in self.devices.items():
            if isinstance(device, type):
                result.append(devName)
        return result
   
    def getDevice(self, deviceName):
        result = {}
        if deviceName in self.devices:
            result = self.devices[deviceName]
        return result