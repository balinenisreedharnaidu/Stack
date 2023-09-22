sudo apt update 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys d0a112e067426ab2
sudo wget -O /etc/apt/sources.list.d/scylla.list http://downloads.scylladb.com/deb/debian/scylla-5.0.list
sudo apt-get update
sudo apt-cache madison scylla
sudo apt-get install scylla{,-server,-jmx,-tools,-tools-core,-kernel-conf,-node-exporter,-conf,-python3}=5.0~rc0-0.20220204.da0cd2b10-1
sudo scylla_setup
sudo systemctl start scylla-server
sudo systemctl status scylla-server
echo "SCYLLA SERVER 5.0.0 SUCCESSFULLY INSTALLED"
