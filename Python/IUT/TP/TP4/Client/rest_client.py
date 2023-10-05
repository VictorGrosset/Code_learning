import json
import requests

ip_address = '10.6.7.67'
port_num: int = 8888
url = f'http://{ip_address}:{port_num}/devs/sensors/temp/last'
headers = {'Accept': 'application/json'}

response = requests.get(url, headers=headers)



jsonObject = response.json()

print(json.dump(jsonObject, indent=4))
