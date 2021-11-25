# pip install paho-mqtt
# disconnect firewall
import paho.mqtt.client as mqtt #import the client1
import time
from gpiozero import DistanceSensor

from datetime import datetime

broker_address="192.168.68.107"
# change for your ip address

client = mqtt.Client("Raspberry") #create new instance
#client.on_message=on_message #attach function to callback
client.connect(broker_address)
#client.loop_start() #start the loop

sensor = DistanceSensor(echo=17, trigger=4)

while True:
    today = datetime.now()
    today_dt = today.strftime("%d/%m/%Y %H:%M:%S")
    
    distancia_sen = sensor.distance * 100
    message = "time={};measure={};coordinate=19.28498221216455:-99.13506678786165".format(today_dt, distancia_sen)
    print(message)

    client.subscribe("sensor12/ultrasom")
    client.publish("sensor12/ultrasom",message)
    time.sleep(1) # wait


