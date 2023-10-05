from flask import Flask
from json import dumps

from core.devices import DeviceCollection
from core.sensor import Sensor, TemperatureSensor, HumiditySensor, PressureSensor
from core.actuator import Actuator, LedActuator

app = Flask(__name__)

devs = DeviceCollection()
devs.addDevice(LedActuator(0, 0))
devs.addDevice(LedActuator(0, 7))
devs.addDevice(LedActuator(7, 0))
devs.addDevice(LedActuator(7, 7))
devs.addDevice(TemperatureSensor("temp", "Temperature Sensor of SenseHAT"))
devs.addDevice(HumiditySensor("hum", "Humidity Sensor of SenseHAT"))
devs.addDevice(PressureSensor("pres", "Pressure Sensor of SenseHAT"))


@app.route("/devs")
def getDevices():
    return dumps(devs.getDeviceList(), indent=4)


@app.route("/devs/sensors")
def getSensors():
    return dumps(devs.getDeviceListByType(Sensor), indent=4)


@app.route("/devs/sensors/<sensorName>")
def getSensorByName(sensorName):
    return dumps(devs.getDevice(sensorName).getRepresentation(), indent=4)


@app.route("/devs/sensors/<sensorName>/last")
def getSensorLastValue(sensorName):
    res = {
        "name": sensorName,
        "value": devs.getDevice(sensorName).getValue()
    }
    return dumps(res, indent=4)


@app.route("/devs/sensors/<sensorName>/history")
def getSensorHistory(sensorName):
    res = {
        "name": sensorName,
        "history": devs.getDevice(sensorName).getHistory()
    }
    return dumps(res, indent=4)


@app.route("/devs/actuators")
def getActuators():
    return dumps(devs.getDeviceListByType(Actuator), indent=4)


@app.route("/devs/actuators/<actuatorName>")
def getActuatorByName(actuatorName):
    return dumps(devs.getDevice(actuatorName).getRepresentation(), indent=4)


@app.route("/devs/actuators/<actuatorName>/last")
def getActuatorLastAction(actuatorName):
    return dumps(devs.getDevice(actuatorName).getLastAction(), indent=4)


@app.route("/devs/actuators/<actuatorName>/action/off")
def doOffAction(actuatorName):
    ledColor = [0, 0, 0]
    devs.getDevice(actuatorName).doAction("off", ledColor)

    res = {
        "name": actuatorName,
        "action": "off",
        "params": ledColor
    }
    return dumps(res)


@app.route("/devs/actuators/<actuatorName>/action/on/<red>/<green>/<blue>")
def doOnAction(actuatorName, red, green, blue):
    ledColor = [int(red), int(green), int(blue)]
    devs.getDevice(actuatorName).doAction("on", ledColor)

    res = {
        "name": actuatorName,
        "action": "on",
        "params": ledColor
    }
    return dumps(res)


print("Starting server ...")
app.run(host="10.6.7.67", port=8888)
