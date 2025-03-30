useradd $USER

echo "$USER:$PASSWORD" | chpasswd

mkdir /home/$USER

chown -R $USER:$USER /var/www/html



sed -i 's/^listen=NO/listen=YES/' /etc/vsftpd.conf
sed -i 's/^listen_ipv6=YES/listen_ipv6=NO/' /etc/vsftpd.conf

echo "
chroot_local_user=YES
write_enable=YES
local_enable=YES
allow_writeable_chroot=YES
pasv_enable=YES
local_root=/var/www/html
pasv_min_port=20000
pasv_max_port=20100
" >> /etc/vsftpd.conf

service vsftpd stop

/usr/sbin/vsftpd /etc/vsftpd.conf