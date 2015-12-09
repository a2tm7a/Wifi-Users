#
# To check for users over the wifi
#
sudo nmap -sP 192.168.1.0/24 | grep 'MAC Address' | awk '{print $3}'
