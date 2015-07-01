# !/bin/sh
cd /root
mkdir openvas
cd openvas

apt-get install build-essential cmake apt-get doxygen bison uuid-dev libldap-2.4-2 libldap2-dev zlib1g-dev libgnutls libgnutls-dev libgnutlsxx28 libgnutls28-dev
libglib2.0-0 libglib2.0-dev libssh-4 libssh-dev libpcap0.8 libpcap0.8-dev libgpgme11 libgpgme11-dev libmcrypt-dev libmcrypt4 libhiredis-dev libhiredis0.10 libgcrypt20 libgcrypt20-dev pkg-config -y

wget http://wald.intevation.org/frs/download.php/2067/openvas-libraries-8.0.3.tar.gz
wget http://wald.intevation.org/frs/download.php/2071/openvas-scanner-5.0.3.tar.gz
wget http://wald.intevation.org/frs/download.php/2075/openvas-manager-6.0.3.tar.gz
wget http://wald.intevation.org/frs/download.php/2079/greenbone-security-assistant-6.0.3.tar.gz
wget http://wald.intevation.org/frs/download.php/2093/openvas-cli-1.4.1.tar.gz

tar xvzf openvas-libraries-8.0.3.tar.gz
tar xvzf openvas-scanner-5.0.3.tar.gz
tar xvzf openvas-manager-6.0.3.tar.gz
tar xvzf greenbone-security-assistant-6.0.3.tar.gz
tar xvzf openvas-cli-1.4.1.tar.gz

cd /root/openvas/openvas-libraries-8.0.3
mkdir source
cd source
cmake ..
make
make install

cd /root/openvas/openvas-scanner-5.0.3
mkdir source
cd source
cmake ..
make
make install

cd /root/openvas/openvas-manager-6.0.3
mkdir source
cd source
cmake ..
make
make install

cd /root/openvas/greenbone-security-assistant-6.0.3
mkdir source
cd source
cmake ..
make
make install

cd /root/openvas/openvas-cli-1.4.1
mkdir source
cd source
cmake ..
make
make install
 
