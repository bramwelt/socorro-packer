wget http://apt.puppetlabs.com/puppetlabs-release-stable.deb
dpkg -i puppetlabs-release-stable.deb

apt-get update
apt-get -y install puppet facter
