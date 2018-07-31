#
# install script for RPiAdHocWifi
#
apt install udhcpd
touch /var/lib/misc/udhcpd.leases
cp rc.local /etc
cp udhcpd.conf /etc
cp dhcpcd.conf /etc
