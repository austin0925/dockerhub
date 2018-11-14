#!/bin/bash
# File mounted as: /etc/sftp.d/bindmount.sh
# Just an example (make your own)

function bindmount() {
    if [ -d "$1" ]; then
        mkdir -p -m 777 "$2"
    fi
    mount --bind $3 "$1" "$2"
}

# Remember permissions, you may have to fix them:
# chown -R :users /data/common

bindmount /root/share /home/nec/share
bindmount /root/share /home/dsic/share
bindmount /root/share /home/ifrx/share
bindmount /root/share /home/firstbank/share
bindmount /root/share /home/bot/share
bindmount /root/share /home/tcb/share

#change home owner
cd /
chown -R root:root home
chmod -R 755 home
cd /root
chmod -R 757 share

# change .ssh ownership
cd /home/nec && mkdir -p -m 777 data
cd /home/dsic && mkdir -p -m 777 data
cd /home/ifrx && mkdir -p -m 777 data
cd /home/firstbank && mkdir -p -m 777 data
cd /home/bot && mkdir -p -m 777 data
cd /home/tcb && mkdir -p -m 777 data
cd /home/civi_fund && mkdir -p -m 777 data
cd /home/fund_usr && mkdir -p -m 777 data
cd /home/fund && mkdir -p -m 777 data
cd /home/fund1 && mkdir -p -m 777 data