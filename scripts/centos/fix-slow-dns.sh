#!/bin/bash -eux

if [[ "$PACKER_BUILDER_TYPE" == virtualbox* ]]; then
  # Fix slow DNS lookups with VirtualBox's DNS proxy:
  # https://github.com/mitchellh/vagrant/issues/1172#issuecomment-42263664
  # add 'single-request-reopen' so it is included when /etc/resolv.conf is generated
  echo 'RES_OPTIONS="single-request-reopen"' >> /etc/sysconfig/network
  service network restart
  echo 'Slow DNS fix applied (single-request-reopen)'
fi
