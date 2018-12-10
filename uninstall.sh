#
# uninstall script for RPiAdHocWifi
#

# remove previously installed packages
apt purge udhcpd busybox

./revert.sh
