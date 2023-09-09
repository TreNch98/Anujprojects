import requests
import json
while True:
 city = input("Enter the name of the city\n")
 url = f"https://api.weatherapi.com/v1/current.json?key=1c232ae396d24f3da89105752232205&q={city}"

 r = requests.get(url)
 if city == ("end").lower():
   print("thank You take care..")
   break
 wdic = json.loads(r.text)
 print(wdic["current"]["temp_c"])