#!/bin/bash

#Run in docker with 50 HBP ports and 5 OBP ports
#Allow monitor to connect on 4321

docker run --read-only -v ./config/FreeDMR.cfg:/opt/freedmr/FreeDMR.cfg -v ./FreeDMR.log:/opt/freedmr/FreeDMR.log -v ./config/rules.py:/opt/freedmr/rules.py -p 54000-54050:54000-54050/udp -p 64036-64040:64036-64040/udp -p 4321:4321/tcp freedmr
