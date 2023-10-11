import json
import requests

ip_address = ''
port_num: int =
url = f'http://{ip_address}:{port_num}/devs/sensors/temp/last'
headers = {'Accept': 'application/json'}

response = requests.get(url, headers=headers)

jsonObject = response.json()

print(json.dump(jsonObject, indent = 4))
