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

<p>

After logging into your Raspberry Pi and cloning this repository, do the following from the command line:

% cd RPiAdHocWifi <br>
% sudo ./install.sh <br>
% sudo reboot <br>

##  Connecting to your ad-hoc network from another Raspberry Pi
If you have more than one Raspberry Pi, you can use one to serve up the ad-hoc network as shown above,
and the other(s) to connect to the network as clients.  To do that, you'll want the <tt>/etc/rc.local</tt>
file on your client(s) to look like this:

<pre>
#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.

# Make me a client on the wireless ad-hoc network being served by Raspberry-Pi-1
iwconfig wlan0 mode Ad-Hoc
ifconfig wlan0 essid Raspberry-Pi-1

exit 0
</pre>

Now when you open the network preferences on your desktop or laptop computer, you should see <b>Raspberry-Pi-1</b>
as a wifi network you can join.  From there, you can connect to the Raspberry Pi using ssh:

<pre>
% ssh pi@192.168.2.2
</pre>

## Important note

<b>If you have a <tt>/etc/udhcpd.conf</tt> on your client, you should make sure that it is empty 
(so that the client is not trying to serve up an ad-hoc network).  You should also make sure
that <tt>/etc/network/interfaces</tt> has no specifications for <tt>wlan0</tt> (since those
are being specified in <tt>/etc/rc.local</tt>). Otherwise you will likely see a different IP address
(169.254....) instead of the expected 192.168.2.2</b>
