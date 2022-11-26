import requests 
headers = {}
headers['Authorization'] = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNTY5NTIyMDkxLCJqdGkiOiJlZmE3NjhhOWIxY2I0MmZiODFlNjExZjVkZDdmZjgyMyIsInVzZXJfaWQiOjh9.wPE64DXtwg3w7hsMFAI0glZsN-dgMXataDgmfBfnKBU'

r = requests.get('http://127.0.0.1:8000/API/', headers = headers)

print(r.text)
