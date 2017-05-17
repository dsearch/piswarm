#!/bin/sh
cd `dirname $0`
java -Duser.country=US -Duser.language=us -Xmx512M -jar lib/swarm.jar --kiosk=layout:monitor gov.usgs.swarm.Swarm
