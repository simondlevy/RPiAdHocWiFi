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

After cloning this repository, do the following from your Raspberry Pi's command line:

% cd RPiAdHocWiFi<br>
% sudo cp rc.local /etc<br>
% sudo cp udhcpd.conf /etc<br>
% sudo reboot
