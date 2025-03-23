service vsftpd start




# useradd ftpuser

# echo "ftpuser:$FTP_PASS" | chpasswd
# echo "ftpuser:ftpuser" > /etc/vsftpd.userlist

# mkdir /home/$ftp_user/ftp

# chown nobody:nogroup /home/ftpuser
# chmod a-w /home/ftpuser

# chown ftpuser:ftpuser /home/ftpuser/files



# echo "write_enable=YES" >> /etc/vsftpd.conf \
# && echo "chroot_local_user=YES" >> /etc/vsftpd.conf \
# && echo "local_enable=YES" >> /etc/vsftp.conf \
# && echo "allow_writeable_chroot=YES" >> /etc/vsftpd.conf \
# && echo "pasv_enable=YES" >> /etc/vsftpd.conf \
# && echo "pasv_min_port=20000" >> /etc/vsftpd.conf \
# && echo "pasv_max_port=30000" >> /etc/vsftpd.conf \
# && echo "userlist_file=/etc/vsftpd.userlist" >> /etc/vsftpd.conf
# # && echo "local_root=/home/ftpuser/files" >> /etc/vsftpd.conf \

# mkdir /var/run/vsftpd
# mkdir /var/run/vsftpd/empty

# /usr/sbin/vsftpd /etc/vsftpd.conf

while true; do sleep 1; done;