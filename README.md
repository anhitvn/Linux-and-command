# CentOS 6.2 (Final)

Update 07/02/2025

## Network

Check IP nhanh với command: `ip addr`
Cần check chi tiết card mạng và IP: `ifconfig`
Các command về network
Check tình trạng hoặc restart lại network service

```
service network [status|stop|start|restart]
```

Start card mạng `eth0`

```ifconfig
ifconfig eth0 up
```

Để config set IP tĩnh cho CentOS cần check xem tên card sau đó truy cập vào folder `/etc/sysconfig/network-scripts` và set config tương ứng trong file `ifcfg-eth0` (Máy khác nhau có thể tên card sẽ khác, là eth0, eth1, eth2,...)

```
cd /etc/sysconfig/network-scripts
```

Dùng Nano or Vi config file  `ifcfg-eth0`

```
vi ifcfg-eth0
```

Nội dung config

```
DEVICE=eth0
ONBOOT=yes
TYPE=Ethernet
BOOTPROTO=none
IPADDR=192.168.20.200
PREFIX=24
GATEWAY=192.168.20.1
DNS1=192.168.20.200
DNS2=203.113.181.1
DNS3=203.113.131.1
DOMAIN=anhit.local
```
