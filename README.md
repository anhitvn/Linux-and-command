# Setup iRedMail on Ubuntu 22.04
Ubuntu version 22.04
Tài liệu setup tham khảo: https://azdigi.com/blog/huong-dan/huong-dan-cai-dat-iredmail-tren-ubuntu-22-04/

## Step 1: Recheck and updatae server
Update hostname email
```
hostnamectl set-hostname mail.nexlesoft.io.vn
```
apply and change hostname
```
exec bash
```
check hostname use command:
```
hostnamectl
```
Show
```
 Static hostname: mail.nexlesoft.io.vn
       Icon name: computer-vm
         Chassis: vm
      Machine ID: ab3d5577da2b4dfd94967d3a70313b19
         Boot ID: 41a4a2ec0ac945b4a550dd9c46db6b56
  Virtualization: vmware
Operating System: Ubuntu 22.04.5 LTS              
          Kernel: Linux 5.15.0-117-generic
    Architecture: x86-64
 Hardware Vendor: VMware, Inc.
  Hardware Model: VMware Virtual Platform
```
Updates host ip
```
nano /etc/hosts
```
show
```
127.0.0.1 localhost
127.0.1.1 mail.local mail 

# The following lines are desirable for IPv6 capable hosts
::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters

<Your wan IP> mail.nexlesoft.io.vn
```
Continue update this server and reboot
```
apt-get update && apt-get upgrade -y; reboot
```
## Step 2: Setup iRedMail
Setup package
```
sudo apt-get install -y gzip dialog
```
Create new Folder iredmail resource
```
cd /
mkdir iredmail && cd iredmail
```
Download  iRedMail version 1.7.1
```
wget https://github.com/iredmail/iRedMail/archive/refs/tags/1.7.1.tar.gz
```
Continue setup
```
tar -zxf 1.7.1.tar.gz
cd iRedMail-1.7.1/
bash iRedMail.sh
```
Type Enter continue setup

### Step 3: Config setup
### Step 4: Finish

Web login: https://mail.nexlesoft.io.vn/iredadmin/

Continue setup Lets encrypt SSL for iRedMail
