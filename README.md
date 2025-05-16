# Usage
1. Download *.sh file;
2. Open downloaded file in any type of text editor;
3. Type MAC-address in field `NEW_MAC`;
4. Type interface in field `IFACE` (you can find the interface name by running `ip link` command);
5. Run `chmod +x change_mac_manual.sh` to make .sh file executable;
6. `./change_mac_manual.sh`

# Hints
1. This script works only on linux;
2. This script is not supposed to autorun with the system. To configure autoloading, use solutions from the Internet for your linux distribution;
3. The output of the `ip link` command should look something like this:

`1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000`
`    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00`
`2: enp4s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP mode DEFAULT group default qlen 1000`
`    link/ether 00:00:00:00:00:00 brd ff:ff:ff:ff:ff:ff permaddr 00:00:00:00:00:00`
`    altname enx002b67ca605a`
`3: wlan0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN mode DORMANT group default qlen 1000`
`    link/ether 00:00:00:00:00:00 brd ff:ff:ff:ff:ff:ff permaddr 00:00:00:00:00:00`

`enp4s0` - Ethernet interface
`wlan0` - WI-FI interface