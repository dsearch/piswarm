# PiSwarm
USGS Swarm on a Raspberry Pi

This is a basic setup for getting a kiosk style disply to work with the USGS Swarm application and data.

You will need the following:
* A Raspberry Pi 3 and MicroSD card
* Suitable display (HDMI and USB for power is ideal)
* Keyboard and mouse for setup (not stritly required)

Download rasbian image from https://www.raspberrypi.org/downloads/raspbian/

Follow the installation guide to get raspbian setup and connected to your network.

Using raspi-config:
* Change the default password for the 'pi' user.
* Enable Boot to Desktop
* Set the internationalization options (timezone, keyboard, language).
* Expand Filesystem and reboot

Clone this repository.
Run the setup.sh script as the pi user or do the following by hand:

Download Swarm from https://volcanoes.usgs.gov/software/swarm/download.php
Unzip swarm-<version>-bin.zip into the home directory for the 'pi' user.
Rename swarm-<version> directory to swarm

Copy the files from this repository into the 'pi' user's home directory as follows:
* lxde-rc.xml to .config/openbox/lxde-rc.xml
* xsessionrc to .xsessionrc
* dmrc to .dmrc
* swarm.sh to swarm/swarm.sh
* gov.usgs.swarm.Swarm to swarm/gov.usgs.swarm.Swarm
* monitor.config to swarm/layouts/monitor.config (or create your own using swarm)

