echo -e “0.asia.pool.ntp.org\n1.asia.pool.ntp.org\n2.asia.pool.ntp.org\n3.asia.pool.ntp.org″>/etc/ntp/step-tickers
service ntpd stop
ntpdate  0.asia.pool.ntp.org && echo -e “server 0.asia.pool.ntp.org prefer\nserver 1.asia.pool.ntp.org\nserver 2.asia.pool.ntp.org\nserver 3.asia.pool.ntp.org\n″>>/etc/ntp.conf
service ntpd start
chkconfig -–level 35 ntpd on
