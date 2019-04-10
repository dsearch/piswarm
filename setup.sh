#!/bin/sh
SWARMVERSION=2.8.9

if [ ! -d ~/swarm ]; then
echo Downloading swarm.
wget https://volcanoes.usgs.gov/software/swarm/bin/swarm-${SWARMVERSION}-bin.zip

unzip swarm-${SWARMVERSION}-bin.zip
mv swarm-${SWARMVERSION} ~/swarm
fi

mkdir -p ~/.config/openbox/
cp lxde-rc.xml ~/.config/openbox/lxde-rc.xml
cp xsessionrc ~/.xsessionrc
chmod +x ~/.xsessionrc
cp dmrc ~/.dmrc
mkdir -p ~/swarm/layouts
cp swarm.sh ~/swarm/swarm.sh
chmod +x ~/swarm/swarm.sh
cp -n gov.usgs.swarm.Swarm ~/swarm/gov.usgs.swarm.Swarm
cp -n monitor.config ~/swarm/layouts/monitor.config
