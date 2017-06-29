# RPiAdHocWiFi
Simple ad-hoc wireless network support for Raspberry Pi.

The RaspberryPi 3 comes with a Broadcom wifi chip onboard, making it easy to
setup an ad-hoc wifi network for remote sensing, Internet of Things, and
related projects.  This little repository will help you do that.  You should be
running the Raspbian 
operating system on your Raspberry Pi.

<b>
NOTE: Following these instructions will clobber your existing startup script
(/etc/rc.local) and DHCP configuration (/etc/udhcpd.conf).  Proceed with
caution.
</b>

After logging into your Raspberry Pi and cloning this repository, do the following from the command line:

% cd RPiAdHocWifi
% sudo ./install.sh
% sudo reboot
