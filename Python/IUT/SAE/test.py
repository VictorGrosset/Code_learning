import pyvisa

rm = pyvisa.ResourceManager('@py')
arv = rm.open_resource("TCPIP0::localhost::5025::SOCKET")
arv.read_termination = '\n'
arv.write_termination = '\n'
arv.timeout = 5000
arv.baud_rate = 9600
print(arv.query('*IDN?'))

arv.write('CALCulate:FUNCtion:TYPE MEAN')
arv.write('CALCulate:FUNCtion:EXECute')
resultat = arv.query('CALCulate1:MARKer1:Y?')
print("le coefficient de réflexion égal à ", resultat)
resultat = arv.query('CALCulate:SELected:FUNCtion:DATA?')
print("le coefficient de réflexion égal à ", resultat)