

curl https://raw.githubusercontent.com/dvershinin/apt-get-centos/master/apt-get.sh -o /usr/local/bin/apt-get
chmod 0755 /usr/local/bin/apt-get

cd /etc/yum.repos.d/
cp CentOS-Base.repo CentOS-Base.repo.old
vi CentOS-Base.repo
yum clean all
yum update
yum install dc mesa-utils pulseaudio libquadmath0 libgtk2.0-0 libgomp1
yum install libXcomposite libXcursor libXi libXtst libXrandr alsa-lib mesa-libEGL libXdamage mesa-libGL libXScrnSaver

yum install wget

wget https://repo.continuum.io/archive/Anaconda3-4.3.1-Linux-x86_64.sh

