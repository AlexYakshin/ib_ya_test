import os
import requests
import json
# Импортируем необходимые библиотеки

# Сканирум сеть
def do_ping_sweep(ip, nhost):
    ip_parts = ip.split('.')
    network_ip = ip_parts[0] + '.' + ip_parts[1] + '.' + ip_parts[2] + '.'
    scanned_ip = network_ip + str(int(ip_parts[3]) + nhost)
    response = os.popen(f'ping -c 1 {scanned_ip}')
    res = response.readlines()
    print(f"[#] Result of scanning: {scanned_ip} [#]\n{res[1]}", end='\n')

# Производим отпраку HTTP запросов
def sent_http_request(target, method, headers=None, header_value=None):
     headers_dict = dict()
     if headers:
         for header in headers:
             header_name = header.split(':')[0]
             header_value = header.split(':')[1:]
             headers_dict[header_name] = ':'.join(header_value)
     if method == "GET":
         response = requests.get(target, headers=headers_dict)
     elif method == "POST":
         response = requests.post(target, headers=headers_dict, data=header_value)
     print(
         f"[#] Response status code: {response.status_code}\n"
         f"[#] Response headers: {json.dumps(dict(response.headers), indent=4, sort_keys=True)}\n"
         f"[#] Response content:\n {response.text}"
    )
