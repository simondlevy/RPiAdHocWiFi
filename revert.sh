#
# reversion script for RPiAdHocWifi
#
# this will not uninstall any software, but will revert back to the config file versions before the install
#

# restore from backups if they exist or delete the files
if [ -e /etc/rc.local.adhoc_bak ]
then
    cp /etc/rc.local.adhoc_bak /etc/rc.local
fi
rm /etc/rc.local.adhoc_bak

if [ -e /etc/udhcpd.conf.adhoc_bak ]
then
    cp /etc/udhcpd.conf.adhoc_bak /etc/udhcpd.conf
else 
    rm /etc/udhcpd.conf
fi
rm /etc/udhcpd.conf.adhoc_bak

if [ -e /etc/dhcpcd.conf.adhoc_bak ]
then
    cp /etc/dhcpcd.conf.adhoc_bak /etc/dhcpcd.conf
else 
    rm /etc/dhcpcd.conf
fi
rm /etc/dhcpcd.conf.adhoc_bak

echo "Please reboot now for changes to take effect."
exit 0
