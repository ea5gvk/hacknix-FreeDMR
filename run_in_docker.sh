#!/bin/bash

#Run in docker with 50 HBP ports and 5 OBP ports
#Allow monitor to connect on 4321


docker run --read-only -d  -v `pwd`/config/freedmr-docker.cfg:/opt/freedmr/hblink.cfg -v /tmp/FreeDMR.log:/opt/freedmr/freedmr.log -v `pwd`/config/rules.py:/opt/freedmr/rules.py -p 54000-54050:54000-54050/udp -p 62036-62046:62036-62046/udp -p 4321:4321/tcp freedmr

