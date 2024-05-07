import requests

def ping_sweep_api(ip: str = '192.168.1.80', count: int = 20):
    response = requests.get("http://172.17.0.1:3000/scan", params={"ip": ip, "count": count})
    print(response.status_code)
    print(response.headers)
    print(response.json())

def send_http_api(target: str = 'https://Google.com', method: str = 'GET',
                  header: str = 'Content-type', header_value: str = 'text'):
    response = requests.post("http://172.17.0.1:3000/sendhttp", params={"target": target, "method": method,
                                                                        "header": header,
                                                                        "header_value": header_value})
    print(response.status_code)
    print(response.headers)
    print(response.json())

if __name__ == '__main__':
    print("Запуск теста API")
    print("192.168.1.80, count = 20")
    ping_sweep_api()
    print("https://Google.com")
    send_http_api()

